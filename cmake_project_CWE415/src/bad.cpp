#include <cstdlib>
#include <iostream>
#include <ctime>

#ifndef OMITGOOD

void printLine(const char* str)
{
    std::cout << str << std::endl;
}

/* goodB2G1() - use badsource and goodsink by changing the second 1 to 0 */
static void goodB2G1()
{
    char* data;
    /* Initialize data */
    data = nullptr;
    if (1)
    {
        data = new char[100];
        if (data == nullptr)
        {
            exit(-1);
        }
        /* POTENTIAL FLAW: Free data in the source - the bad sink frees data as well */
        delete[] data;
    }
    if (0)
    {
        /* INCIDENTAL: CWE 561 Dead Code, the code below will never run */
        printLine("Benign, fixed string");
    }
    else
    {
        /* do nothing */
        /* FIX: Don't attempt to free the memory */
        ; /* empty statement needed for some flow variants */
    }
}

/* goodB2G2() - use badsource and goodsink by reversing the blocks in the second if */
static void goodB2G2()
{
    char* data;
    /* Initialize data */
    data = nullptr;
    if (1)
    {
        data = new char[100];
        if (data == nullptr)
        {
            exit(-1);
        }
        /* POTENTIAL FLAW: Free data in the source - the bad sink frees data as well */
        delete[] data;
    }
    if (1)
    {
        /* do nothing */
        /* FIX: Don't attempt to free the memory */
        ; /* empty statement needed for some flow variants */
    }
}

/* goodG2B1() - use goodsource and badsink by changing the first 1 to 0 */
static void goodG2B1()
{
    char* data;
    /* Initialize data */
    data = nullptr;
    if (0)
    {
        /* INCIDENTAL: CWE 561 Dead Code, the code below will never run */
        printLine("Benign, fixed string");
    }
    else
    {
        data = new char[100];
        if (data == nullptr)
        {
            exit(-1);
        }
        /* FIX: Do NOT free data in the source - the bad sink frees data */
    }
    if (1)
    {
        /* POTENTIAL FLAW: Possibly freeing memory twice */
        delete[] data;
    }
}

/* goodG2B2() - use goodsource and badsink by reversing the blocks in the first if */
static void goodG2B2()
{
    char* data;
    /* Initialize data */
    data = nullptr;
    if (1)
    {
        data = new char[100];
        if (data == nullptr)
        {
            exit(-1);
        }
        /* FIX: Do NOT free data in the source - the bad sink frees data */
    }
    if (1)
    {
        /* POTENTIAL FLAW: Possibly freeing memory twice */
        delete[] data;
    }
}

void CWE415_Double_Free__malloc_free_char_02_good()
{
    goodB2G1();
    goodB2G2();
    goodG2B1();
    goodG2B2();
}

#endif /* OMITGOOD */

int main(int argc, char* argv[])
{
    /* seed randomness */
    srand(static_cast<unsigned>(time(nullptr)));

#ifndef OMITGOOD
    printLine("Calling good()...");
    CWE415_Double_Free__malloc_free_char_02_good();
    printLine("Finished good()");
#endif /* OMITGOOD */

    return 0;
}
