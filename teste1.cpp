#include "iostream"

/* ----------TO COMPILE YOUR CODE ON THE TERMINAL:
g++ main.cpp -o main.out
./main.out 

Aonther way is run your code at the "Terminal" link and click on the "RUn task" link, 
and choose your compile type ------------------------*/

/*using namespace std;

int main(){
    cout << "Hello fucking World" << endl;
   
}*/

/*int main(){
    char c;
    std::cin >> c;
    std::cout << "the value of ´" << c <<"´ is " << int(c) << '\n';
}*/
using namespace std;
int main (){
    
    //define months as having 12 possible values
    enum months {Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec};

    //define bestmonth as a variable type months
    months bestmonths = Feb;

    //Check the values
    if(bestmonths == Jan){
       cout<<" Yes it is! \n";
    }
    return 0;

    /*cout<<"int size = "<<sizeof(int)<<"\n";
    cout<<"short size = "<<sizeof(short)<<"\n";
    cout<<"long size = "<<sizeof(long)<<"\n";
    cout<<"char size = "<<sizeof(char)<<"\n";
    cout<<"float size = "<<sizeof(float)<<"\n";
    cout<<"double size = "<<sizeof(double)<<"\n";
    cout<<"bool size = "<<sizeof(bool)<<"\n";*/

    /*int year = 0;
    int age = 0;

    std::string name = " ";
    // print message to the user
    std::cout<<"What year is your favorite? ";
    //get the user response and assign it to the year
    std::cin>> year;
    /*int vi[10];
    short vs[10];

    std::cout << &vi[0] << ' ' << &vi[1] << '\n';
    std::cout << &vi[0] << ' ' << &vi[1] << '\n';
    std::cout << &vs[0] << ' ' <<vs[1] << '\n';*/

}
