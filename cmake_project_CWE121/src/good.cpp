#include <iostream>
#include <cstring>

#define SRC_STR "0123456789abcdef0123456789abcde"

typedef struct _charVoid
{
    char charFirst[16];
    void* voidSecond;
    void* voidThird;
} charVoid;


void CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memcpy_02_bad()
{
    if (1)
    {
        charVoid structCharVoid;
        structCharVoid.voidSecond = (void*)SRC_STR;
        
        // Print the initial block pointed to by structCharVoid.voidSecond
        std::cout<<(char*)structCharVoid.voidSecond<<std::endl;
        
        // FLAW: Use the sizeof(structCharVoid) which will overwrite the pointer voidSecond
        memcpy(structCharVoid.charFirst, SRC_STR, sizeof(structCharVoid));
        // FIX: Use sizeof(structCharVoid.charFirst) to avoid overwriting the pointer voidSecond
       // memcpy(structCharVoid.charFirst, SRC_STR, sizeof(structCharVoid.charFirst));
        structCharVoid.charFirst[(sizeof(structCharVoid.charFirst) / sizeof(char)) - 1] = '\0'; // null terminate the string
        
        std::cout<<structCharVoid.charFirst<<std::endl;
        std::cout<<(char*)structCharVoid.voidSecond<<std::endl;
    }
}

int main(int argc, char* argv[])
{
    // seed randomness
    srand((unsigned)time(NULL));
    
    std::cout<<"Calling bad()..."<<std::endl;
    CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memcpy_02_bad();
    std::cout<<"Finished bad()"<<std::endl;
    
    return 0;
}
