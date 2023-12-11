#include <cstdlib>
#include <ctime>
#include <iostream>

#ifndef OMITBAD

void CWE415_Double_Free__malloc_free_char_02_bad()
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
       // data=nullptr;
    }
    if (1)
    { 
    /* Check if data is nullptr before deleting */
    //if (data != nullptr)
        {
        /* POTENTIAL FLAW: Possibly freeing memory twice */
        delete[] data;
       //data = nullptr; // Set data to nullptr after deletion
        }
    }
}

#endif /* OMITBAD */

int main(int argc, char* argv[])
{
    /* seed randomness */
    srand(static_cast<unsigned>(time(NULL)));

#ifndef OMITBAD
    std::cout << "Calling bad()..." << std::endl;
    CWE415_Double_Free__malloc_free_char_02_bad();
    std::cout << "Finished bad()" << std::endl;
#endif /* OMITBAD */

    return 0;
}
