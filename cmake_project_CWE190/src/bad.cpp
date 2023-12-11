#include <iostream>
#include <climits>

void printHexCharLine(char c)
{
    std::cout << std::hex << static_cast<int>(c) << std::endl;
}

void goodG2B()
{
    char data;
    data = ' ';
    /* FIX: Use a small, non-zero value that will not cause an overflow in the sinks */
    data = 2;
    {
        /* POTENTIAL FLAW: Adding 1 to data could cause an overflow */
        char result = data + 1;
        printHexCharLine(result);
    }
}

void goodB2G()
{
    char data;
    data = ' ';
    /* POTENTIAL FLAW: Use a value input from the console */
    std::cin >> data;
    /* FIX: Add a check to prevent an overflow from occurring */
    if (data < CHAR_MAX)
    {
        char result = data + 1;
        printHexCharLine(result);
    }
    else
    {
        std::cout << "data value is too large to perform arithmetic safely." << std::endl;
    }
}

int main()
{
    std::cout << "Calling good()..." << std::endl;
    goodG2B();
    goodB2G();
    std::cout <<"Finished good()"<< std::endl;
    return 0;
}
