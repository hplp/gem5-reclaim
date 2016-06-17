#include <iostream>
#include <fstream>
#include <string>

int main(int argc, char* argv[])
{
    using namespace std;
    if (argc < 2)
    {
        cout << "Missing file to cat!" << endl;
        return 1;
    }
    ifstream file(argv[1]);
    if (file.is_open())
    {
        string line;
        while (getline(file, line))
            cout << line << endl;
        file.close();
        return 0;
    }
    else
    {
        cout << "Bad file " << argv[1] << endl;
        return 1;
    }
}
