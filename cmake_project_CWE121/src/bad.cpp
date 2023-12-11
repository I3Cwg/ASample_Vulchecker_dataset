#include <iostream>
#include <cstring>

#define SRC_STR "0123456789abcdef0123456789abcde"

typedef struct _charVoid
{
    char charFirst[16];
    void* voidSecond;
    void* voidThird;
} charVoid;

void printLine(const char* str)
{
    std::cout << str << std::endl;
}

static void good1()
{
    if (0)
    {
        // INCIDENTAL: CWE 561 Dead Code, the code below will never run
        printLine("Benign, fixed string");
    }
    else
    {
        charVoid structCharVoid;
        structCharVoid.voidSecond = (void*)SRC_STR;
        
        // Print the initial block pointed to by structCharVoid.voidSecond
        printLine((char*)structCharVoid.voidSecond);
        
        // FIX: Use sizeof(structCharVoid.charFirst) to avoid overwriting the pointer voidSecond
        memcpy(structCharVoid.charFirst, SRC_STR, sizeof(structCharVoid.charFirst));
        
        structCharVoid.charFirst[(sizeof(structCharVoid.charFirst) / sizeof(char)) - 1] = '\0'; // null terminate the string
        
        printLine(structCharVoid.charFirst);
        printLine((char*)structCharVoid.voidSecond);
    }
}

static void good2()
{
    if (1)
    {
        charVoid structCharVoid;
        structCharVoid.voidSecond = (void*)SRC_STR;
        
        // Print the initial block pointed to by structCharVoid.voidSecond
        printLine((char*)structCharVoid.voidSecond);
        
        // FIX: Use sizeof(structCharVoid.charFirst) to avoid overwriting the pointer voidSecond
        memcpy(structCharVoid.charFirst, SRC_STR, sizeof(structCharVoid.charFirst));
        
        structCharVoid.charFirst[(sizeof(structCharVoid.charFirst) / sizeof(char)) - 1] = '\0'; // null terminate the string
        
        printLine(structCharVoid.charFirst);
        printLine((char*)structCharVoid.voidSecond);
    }
}

void CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memcpy_02_good()
{
    good1();
    good2();
}

int main(int argc, char* argv[])
{
    // seed randomness
    srand((unsigned)time(NULL));
    
    printLine("Calling good()...");
    CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memcpy_02_good();
    printLine("Finished good()");
    
    return 0;
}
