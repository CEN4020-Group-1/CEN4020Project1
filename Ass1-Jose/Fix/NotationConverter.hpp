#ifndef NOTATIONCONVERTER_H
#define NOTATIONCONVERTER_H

#include <string>
#include "NotationConverterInterface.hpp"
using namespace std;

class NotationConverter : public NotationConverterInterface{

protected:
    struct EqPart{
        //When operator type is 0 for operands and 1 for operators
        //operator type is 2 for parenthesis
        char ch;
        int priority = 0;
        bool rearranged = false;

        EqPart *next = nullptr;
        EqPart *prev = nullptr;
    };

    //Beggining and end of the list
    EqPart *head = nullptr;
    EqPart *tail = nullptr;
    int minimum = 0;

    void add_node(EqPart *node, int priority, char ch){
        node->priority = priority;
        node->ch = ch;
        
        //Fill in head and tail if they aren't already
        if (head == nullptr){
            head = node;
            tail = node;
        }
        
        //If the node has the lowest priority, make it the new tail
        else if(is_lowest_priority(node)){
            node->prev = tail;
            tail->next = node;
            tail = node;
        }

        //If it has the highest priority, make it the new head
        else if(is_highest_priority(node)){
            node->next = head;
            head->prev = node;
            head = node;
        }

        //If it fits somewhere in between find where, and place it before all of that
        else{
            //bool found = false;
            for (EqPart* temp = head; temp != nullptr; temp = temp->next){
                //Check if there's any node in the list that has an equal priority
                //insert the node before the found node
                if (temp->priority == (priority - 1)){
                    insert_after(node, temp);
                    break;
                }
                //If they're the lowest priority, add them last
                else if (temp->next == nullptr){
                    temp->next = node;
                    break;
                }
            }
        }
    }

    //Ex. 45a6 inserting another 5b
    // 4[before] -> 5b[inserting] -> 5a[before.next] -> 6
    void insert_after(EqPart *inserting, EqPart *before){
        if (before->next != nullptr){
            EqPart *temp = before->next;
            before->next = inserting;
            inserting->next = temp;

            // 4 -> 5b -> 5a -> 6 should become 4 -> 5b -> 6 -> 7
            reconfigure_priorities(temp);
        }
        else{
            cout << "Error";
        }
    }

    //Change a specific priority
    void change_priority(EqPart *part, int ammount){
        part->priority += ammount;
    }

    //Reconfigure all priorities from parameter and beyond
    void reconfigure_priorities(EqPart *fromHere, int ammount = 1){
        for(EqPart *temp = fromHere; temp != nullptr; temp = temp->next){
            temp->priority += ammount;
        }
    }

    EqPart* findMin(){
        EqPart* min = head;

        for(EqPart *temp = head; temp != nullptr; temp = temp->next){
            if (temp->priority == minimum){
                min = temp;
                break;
            }
        }

        return min;
    }
    char popMinimumVal(){
        EqPart* popping = findMin();
        //CHeck if the minimum is in the head, if it is, change the head to it's next one
        if (head == popping){
            head = head->next;
        }
        //If it's tail, change tail to the one right before
        else if(tail == popping){
            tail = tail->prev;  
        }
        //
        else{
            popping->next->prev = popping->prev;
        }
        char ch = popping->ch;
        delete popping;

        reconfigure_priorities(head, -1);
        return ch;
    }

    bool is_lowest_priority(EqPart* node){
        return tail->priority < node->priority;
    }
    bool is_highest_priority(EqPart* node){
        return head->priority > node->priority;
    }

    bool validOperation(char ch){
        return (ch == '+' || ch == '-' || ch == '*' || ch == '/');
    }
    bool validCharacter(char ch){
        return (ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z');
    }
    bool validEither(char ch){
        return (validCharacter(ch) || validOperation(ch));
    }

    //Take all the ch values in the list and print them together
    //Only show () when using inFix
    string makeString(bool inFix = false){
        ostringstream final;

        while(head != nullptr){
            const char part = popMinimumVal();
            string s(&part);

            final << s;
        }

        
        cout << final.str();
        return final.str();
    }
    string testString(bool inFix = false){
        ostringstream final;

        for (EqPart *temp = head; temp != nullptr; temp = temp->next){
            if (!inFix) {
                continue;
            }
            
            const char part = temp->ch;

            string s(&part);

            final << s;
        }

        cout << final.str();
        return final.str();

    }

    //Clear everything in the list once it's not needed anymore
    void clear(){
        EqPart *temp = head;

        while(temp != nullptr){
            EqPart *prev = temp;
            temp = temp->next;

            delete prev;
        }

        head = nullptr;
        tail = nullptr;
    }

    //Make the list then return where they should start reading
    //For InFix, the program will respond to ()
    //For prefix, the program will respond to operators
    //For postFix it will go backwards and respond to operators
    EqPart* fixList(string inStr){
        int len = inStr.length();
        int current_priority = 0;

        for(int i = 0; i < len; i++){
            if ((inStr[i] == '(' || inStr[i] == ')') || validEither(inStr[i])){
                EqPart *newNode = new EqPart();
                add_node(newNode, current_priority, inStr[i]);
                current_priority++;
            }
        }
        testString(true);

        return head;
    }

    //Once operator and operands are found, rearrange accordingly
    void rearrange2Post(EqPart* var1, EqPart* var2, EqPart* op, bool pre = false){
        //Pre to Post: operator | 0, operand 1 | 1, operand 2 | 2 
        // operand 1 | 0, operand 2 | 1, operator | 2
        if (pre){
            op->priority += 2;

            if (validOperation(var1->ch)){
                eqAsOperand(var1, -1);
            }
            else{
                var1->priority += -1;
            }
            if (validOperation(var1->ch)){
                eqAsOperand(var2, -1);
            }
            else{
                var2->priority += -1;
            }
        }
        //In to Post: operand 1 | 0, operator | 1, operand 2 | 2 
        // operand 1 | 0, operand 2 | 1, operator | 2
        else{
            op += 1;

            if (var2->ch == '('){
                parenthesisAsOperand(var2, -1);
            }
            
            else{
                var2->priority += -1;
            }
        }

        //If it's a parenthesis, with a rearranged set to true, just make the program look for a )
        var1->rearranged = true;
        var2->rearranged = true;
        op->rearranged = true;
    }
    void rearrange2In(EqPart* var1, EqPart* var2, EqPart* op, bool pre = false){
        //Pre to In: operator | 0, operand 1 | 1, operand 2 | 2
        // operand 1 | 0, operator | 1, operand 2 | 2
        if (pre){
            op->priority += 1;

            if (validOperation(var1->ch)){
                eqAsOperand(var1, -1);
            }
            
            else{
                var1->priority += -1;
            }

            addParenthesis2Eq(op,var2);
        }
        //Post to In: operand 1 | 0, operand 2 | 1, operator | 2
        // operand 1 | 0, operator | 1, operand 2 | 2
        else{
            op += -1;

            if (validOperation(var1->ch)){
                parenthesisAsOperand(var2, 1);
            }
            else{
                var2->priority += 1;
            }

            addParenthesis2Eq(var1,op);
        }

        //If it's a parenthesis, with a rearranged set to true, just make the program look for a )
        var1->rearranged = true;
        var2->rearranged = true;
        op->rearranged = true;
        
    }
    void rearrange2Pre(EqPart* var1, EqPart* var2, EqPart* op, bool post = false){
        //Post to Pre: operand 1 | 0, operand 2 | 1, operator | 2
        //operator | 0, operand 1 | 1, operand 2 | 2
        if (post){
            op->priority += -2;

            if (validOperation(var1->ch)){
                postEqAsOperand(var1, 1);
            }
            else{
                var1->priority += 1;
            }

            if (validOperation(var1->ch)){
                postEqAsOperand(var2, 11);
            }
            else{
                var2->priority += 1;
            }
        }
        //Pre to In: operand 1 | 0, operator | 1, operand 2 | 2
        //operator | 0, operand 1 | 1, operand 2 | 2
        else{
            op += -1;

            if (var1->ch == '('){
                parenthesisAsOperand(var1, 1);
            }
            else{
                var1->priority += 1;
            }
        }

        //If it's a parenthesis, with a rearranged set to true, just make the program look for a )
        var1->rearranged = true;
        var2->rearranged = true;
        op->rearranged = true;
    }

    //When inner equations are being treated as operands
    void parenthesisAsOperand(EqPart* parenthesis, int ammount){
        //Add/Subtract assigned number
        //Operate from ( to )
        bool innerParenthesis = false;
        for (EqPart* temp = parenthesis; temp != nullptr; temp = temp->next){
            temp->priority += ammount;
            temp->rearranged = true;

            //Inner parenthesis are part of the outer equation
            if (temp != parenthesis && temp->ch == '('){
                innerParenthesis = true;
            }

            if (temp->ch == ')'){
                if(innerParenthesis){
                    innerParenthesis = false;
                }
                else{
                    break;
                }
            }
        }
    }
    void eqAsOperand(EqPart* start, int ammount){
        int *innerEqs;
        int parenthesisDepth = 0;

        innerEqs = new int[0];

        for (EqPart* temp = start; temp != nullptr; temp = temp->next){
            temp->priority += ammount;
            temp->rearranged = true;

            //Another operator marks the start of an inner equation, handle thaat one before going back to the current once
            //This inner equation does couint as an operand
            if (temp != start && validOperation(temp->ch)){
                innerEqs[parenthesisDepth]++;
                parenthesisDepth++;
                int* temp = new int[parenthesisDepth];
                copy(innerEqs,innerEqs, temp);
                delete innerEqs;
                innerEqs = temp;
            }

            if (validCharacter(temp->ch)){
                innerEqs[parenthesisDepth]++;

                if(innerEqs[parenthesisDepth] == 2){
                    parenthesisDepth--;
                }
            }

            if (parenthesisDepth == -1){
                break;
            }
        }
    }
    void postEqAsOperand(EqPart* end, int ammount){
        int *innerEqs;
        int parenthesisDepth = 0;

        innerEqs = new int[0];

        for (EqPart* temp = end; temp != nullptr; temp = temp->prev){
            temp->priority += ammount;
            temp->rearranged = true;

            //Another operator marks the start of an inner equation, handle thaat one before going back to the current once
            //This inner equation does couint as an operand
            if (temp != end && validOperation(temp->ch)){
                innerEqs[parenthesisDepth]++;
                parenthesisDepth++;
                int* temp = new int[parenthesisDepth];
                copy(innerEqs,innerEqs, temp);
                delete innerEqs;
                innerEqs = temp;
            }

            if (validCharacter(temp->ch)){
                innerEqs[parenthesisDepth]++;

                if(innerEqs[parenthesisDepth] == 2){
                    parenthesisDepth--;
                }
            }

            if (parenthesisDepth == -1){
                break;
            }
        }
    }

public:
    //Rearranging pre to Post vs in to Post ends up different, same for other combinations
    //Rearrange parenthesis equations into listed fix
    void operatorRearrangeFromPost(EqPart* op, bool intoPre = false){
        EqPart* operand1 = nullptr;
        EqPart* operand2 = nullptr;
        bool insideInner = false;

        //Look for operator and it's operands
        for (EqPart* temp = op->prev; temp != nullptr; temp = temp->prev){
            //Only check for these if not going through a parenthesis eq that was already rearranged
            if (temp->rearranged){
                continue;
            }
            
            if (!insideInner){
                if (validCharacter(temp->ch)){
                    if (operand1 == nullptr){
                    operand1 = temp;
                    }
                    else{
                        operand2 = temp;
                    }
                }

            }
            
            if (validOperation(temp->ch)){
                //Rearrange any inner parenthesis first
                insideInner = true;
                operatorRearrangeFromPost(temp);
                if (operand1 == nullptr){
                    operand1 = temp;
                }
                else{
                    operand2 = temp;
                }
            }
            
            if (operand2 != nullptr){
                break;
            }

        }
        if (intoPre){
            rearrange2Pre(op, operand1, operand2, true);
        }
        else{
            rearrange2In(op, operand1, operand2);
        }
    }
    void parenthesisRearrangeFromIn(EqPart* parenthesis, bool intoPre = false){
        EqPart* ator = nullptr;
        EqPart* operand1 = nullptr;
        EqPart* operand2 = nullptr;
        bool insideInner = false;

        //Look for operator and it's operands
        for (EqPart* temp = parenthesis->next; temp->ch != ')'; temp = temp->next){
            //Only check for these if not going through a parenthesis eq that was already rearranged
            if (temp->rearranged){
                continue;
            }
            
            if (!insideInner){
                if (validOperation(temp->ch)){
                    ator = temp;
                }
                else if (validCharacter(temp->ch)){
                    if (operand1 == nullptr){
                        operand1 = temp;
                    }
                    else{
                        operand2 = temp;
                    }
                }

            }
            
            else if (temp->ch == '('){
                //Rearrange any inner parenthesis first
                insideInner = true;
                parenthesisRearrangeFromIn(temp);
                if (operand1 == nullptr){
                    operand1 = temp;
                }
                else{
                    operand2 = temp;
                }
            }

            else if (temp->ch == ')'){
                insideInner = false;
                break;
            }
            
            if (operand2 != nullptr && ator != nullptr){
                break;
            }

        }
        if (intoPre){
            rearrange2Pre(ator, operand1, operand2);
        }
        else{
            rearrange2Post(ator, operand1, operand2);
        }
    }
    void operatorRearrangeFromPre(EqPart* op, bool intoPost = false){
        EqPart* operand1 = nullptr;
        EqPart* operand2 = nullptr;
        bool insideInner = false;

        //Look for operator and it's operands
        for (EqPart* temp = op->next; temp != nullptr; temp = temp->next){
            //Only check for these if not going through a parenthesis eq that was already rearranged
            if (temp->rearranged){
                continue;
            }
            
            if (!insideInner){
                if (validCharacter(temp->ch)){
                    if (operand1 == nullptr){
                    operand1 = temp;
                    }
                    else{
                        operand2 = temp;
                    }
                }

            }
            
            if (validOperation(temp->ch)){
                //Rearrange any inner parenthesis first
                insideInner = true;
                operatorRearrangeFromPre(temp);
                if (operand1 == nullptr){
                    operand1 = temp;
                }
                else{
                    operand2 = temp;
                }
            }
            
            if (operand2 != nullptr){
                break;
            }

        }
        if (intoPost){
            rearrange2Post(op, operand1, operand2, true);
        }
        else{
            rearrange2In(op, operand1, operand2, true);
        }
    }

    void addParenthesis2Eq(EqPart* before, EqPart* after){
        int beforePriority = before->priority;
        int afterPriority = after->priority + 1;
        EqPart* newBeforeNode = new EqPart();
        EqPart* newAfterNode = new EqPart();

        //They're apart of an equation that is rearranging
        newBeforeNode->rearranged = true;
        newAfterNode->rearranged = true;

        //Add the one with lower priority first so it doesn't mess with the one with higher priority
        add_node(newAfterNode, afterPriority, ')');
        add_node(newBeforeNode, beforePriority, '(');
        
    }

    //
    string postfixToInfix(string inStr){
        
    }
    string postfixToPrefix(string inStr){}

    string infixToPostfix(string inStr){
        EqPart* start = fixList(inStr);
        EqPart* ator;
        EqPart* operand1;
        EqPart* operand2;

        for (EqPart* temp = start; temp != nullptr; temp = temp->next){
            if (temp->rearranged){
                continue;
            }

            if (validOperation(temp->ch)){
                
                ator = temp;
            }
            else if (validCharacter(temp->ch)){
                if (operand1 == nullptr){
                    operand1 = temp;
                }
                else{
                    operand2 = temp;
                }
            }
            
            
            else if (temp->ch == '('){
                //Rearrange any inner parenthesis first
                //Once outside, save it as a ( which will be handled later
                parenthesisRearrangeFromIn(temp);
                if (operand1 == nullptr){
                    operand1 = temp;
                }
                else{
                    operand2 = temp;
                }
            }

            if (operand2 != nullptr){
                rearrange2Post(operand1, operand2, ator);

                //Rearranged post takes it's operator which will be treated differently later on
                //Since this is from post the the function will have to iterate backwards
                operand1 = ator;
                operand2 = nullptr;
                ator = nullptr;
            
            }
        }
    }
    string infixToPrefix(string inStr){
        EqPart* start = fixList(inStr);
        EqPart* ator;
        EqPart* operand1;
        EqPart* operand2;

        for (EqPart* temp = start; temp != nullptr; temp = temp->next){
            if (temp->rearranged){
                continue;
            }

            if (validOperation(temp->ch)){
                
                ator = temp;
            }
            else if (validCharacter(temp->ch)){
                if (operand1 == nullptr){
                    operand1 = temp;
                }
                else{
                    operand2 = temp;
                }
            }
            
            
            else if (temp->ch == '('){
                //Rearrange any inner parenthesis first
                //Once outside, save it as a ( which will be handled later
                parenthesisRearrangeFromIn(temp, true);
                if (operand1 == nullptr){
                    operand1 = temp;
                }
                else{
                    operand2 = temp;
                }
            }

            if (operand2 != nullptr){
                rearrange2Pre(operand1, operand2, ator);

                //Rearranged post takes it's operator which will be treated differently later on
                //Since this is from post the the function will have to iterate backwards
                operand1 = ator;
                operand2 = nullptr;
                ator = nullptr;
            
            }
        }
    }

    string prefixToInfix(string inStr){
        EqPart* start = fixList(inStr);
        EqPart* ator;
        EqPart* operand1;
        EqPart* operand2;

        for (EqPart* temp = start; temp != nullptr; temp = temp->next){
            if (temp->rearranged){
                continue;
            }

            if (validOperation(temp->ch)){
                if (ator != nullptr){
                    //Rearrange to in will have to add in parenthesis
                    operatorRearrangeFromPre(ator);
                }
                else{
                    ator = temp;
                }
            }
            else if (validCharacter(temp->ch)){
                if (operand1 == nullptr){
                    operand1 = temp;
                }
                else{
                    operand2 = temp;
                }
            }

            if (operand2 != nullptr){
                //Rearrange to In
                rearrange2In(operand1, operand2, ator);

                operand1 = ator;
                operand2 = nullptr;
                ator = nullptr;
            
            }
        }
    }
    string prefixToPostfix(string inStr){}

};

#endif