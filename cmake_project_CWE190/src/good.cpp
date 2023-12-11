#include <iostream>
#include <limits>
void CWE190_Integer_Overflow__char_fscanf_add_01_bad()
{
    char data;
    data = ' ';
    /* POTENTIAL FLAW: Use a value input from the console */
    std::cin >> data;
    //if (data < std::numeric_limits<char>::max())
    {
        char result = data + 1;
        std::cout << result;
    }
    /*else
        {
            std::cout << "Overflow occurred!" << std::endl;
        }*/
}

int main()
{
#ifndef OMITBAD
    std::cout << "Calling bad()...\n";
    CWE190_Integer_Overflow__char_fscanf_add_01_bad();
    std::cout << "Finished bad()\n";
#endif /* OMITBAD */
    return 0;
}
