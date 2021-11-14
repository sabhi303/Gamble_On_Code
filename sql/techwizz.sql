-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2019 at 12:10 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techwizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `round1`
--

CREATE TABLE `round1` (
  `sr no` int(3) NOT NULL,
  `round` int(1) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `option1` varchar(1000) NOT NULL,
  `option2` varchar(1000) NOT NULL,
  `option3` varchar(1000) NOT NULL,
  `option4` varchar(1000) NOT NULL,
  `answer` int(1) NOT NULL,
  `isactive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `round1`
--

INSERT INTO `round1` (`sr no`, `round`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `isactive`) VALUES
(1, 1, 'Which one of the following is not possible state for a pointer?', 'hold the address of the specific object', 'point one past the end of an object', 'zero', 'point to a type', 4, 0),
(2, 1, 'Which is used to keep the call by reference value as intact?', 'static', 'const', 'absolute', 'none of the above', 2, 0),
(3, 1, 'By default how the value are passed in C++?', 'call by value', 'call by reference', 'call by pointer', 'none of the above', 1, 0),
(4, 1, 'C structure differs from CPP class in regards that by default all the members of the structure are _________ in nature', 'private', 'protected', 'public', 'none of the above', 3, 0),
(5, 1, 'Which of the following concept allows compiler to insert arguments in a function call if it is not specified?', 'call by value', 'call by reference', 'call by pointer', 'Default arguments', 3, 0),
(6, 1, 'While redefining a virtual function in the derived class, if its prototype is changed then ____________', 'It will be overloaded by the compiler', 'Its virtual nature will be lost', 'Both 1 and 2', 'Compiler will generate \"Prototype mismatch error\"', 3, 0),
(7, 1, 'Is there any difference in below  two statements?   \r\nInt a=10;  \r\nint a(10);', 'Yes', 'No', 'In C++ yes, in C no', 'Second statement is invalid', 2, 0),
(8, 1, 'Which of the following is Memory Leak Detection Tool?', 'GC++', 'Kdevelop', 'GIT', 'Valgrind', 4, 0),
(9, 1, 'When can we have two classes with same name?', 'We can\'t have', 'In different work space', 'Can have but in different file', 'We can have it using class overloading', 2, 0),
(10, 1, 'What is the size of empty class?', 'Depends on compiler ', '0', 'Size is not allocated unless an object is created', '1', 4, 0),
(11, 1, 'Predict the output:                     \r\nint x=786,\r\ncout<<setfill(\'*\')<<setw(6)<<x;', '786***', '**786', '***786', '******', 3, 0),
(12, 1, 'What is output of the below program?                                          \r\nint main()                                            \r\n{                                                               \r\n  int a=10;                                                \r\n  int b,c;                                         \r\n  b=a++;                                                \r\n  c=a;                                         \r\n  cout<<a<<b<<c;                       \r\n  return 0;                                               \r\n}    ', '111011', '111111', '101011', '101010', 1, 0),
(13, 1, 'Can we typecast void into int?', 'Yes', 'No', 'Undefined', 'Depends on compiler', 1, 0),
(14, 1, 'Which part of memory is used for the allocation of local variables declared inside any function?', 'Heap', 'Stack', 'Address Space', 'Depends on compiler', 2, 0),
(15, 1, 'Which is the parent class for all exceptions?', 'std::bad_exception', 'std::logic_error', 'std::exception', 'std::runtime_error', 3, 0),
(16, 1, 'Comma(,) is the operator which  has least precedence  among all operator? ', 'Yes', 'No', 'Comma is not a operator', 'Depends on other operators present in the expression', 1, 0),
(17, 1, 'How many Access specifier are there in c++?', '1', '2', '3', '4', 3, 0),
(18, 1, 'What should be printed on screen?                                            \r\nint main()                                            \r\n{                                                            \r\n  int x=5;                                                     \r\n  if(x++ == 5)   \r\n    cout<<\"Five\"<<endl;                    \r\n  else if(++x == 6)                       \r\n    cout<<\"Six\"<<endl;                    \r\n  return 0;                                               \r\n}', 'FiveSix', 'Five', 'Six', 'none of the above', 2, 0),
(19, 1, 'int main()                                              \r\n{                                                       \r\n  extern int i;                                 \r\n  i=20;                                                    \r\n  printf (\"%d\" , sizeof(i));          \r\n  return 0;                                               \r\n}  ', '20', '0', 'Undefined reference to i', 'Linking Error', 3, 0),
(20, 1, 'int main()                                            \r\n{                                                           \r\n  int y=0;                                              \r\n  if(y==0)                                             \r\n   int z=5;                                           \r\n  else                                                      \r\n   y=10;                                              \r\n  printf(\"%d\" , --z);                        \r\n  return 0                                                \r\n}', '5', '4', 'Runtime error', 'Compilation error', 4, 0),
(21, 1, 'void main()                                         \r\n{                                                             \r\n  int a=printf(\"CppBuzz.com\");   \r\n  printf{\"%d\" , a);                                \r\n}  ', 'Compilation error', '0', 'CppBuzz.com', 'CppBuzz.com11', 4, 0),
(22, 1, 'Suppose someone writes increment macro(i.e. which increments the value by one) in following ways:                              \r\n#define INC1 (a)((a)+1)    \r\n#define INC2 (a)((a)+1)  \r\n#define INC3 (a)((a)+1)   \r\n#define INC4 (a)((a)((a)+1)                                                  \r\nPick the correct statement for the above macros.   ', 'Only INC1 is correct', 'All are correct', 'Only INC1 and INC3 are correct', 'Only INC1 and INC2 are correct', 3, 0),
(23, 1, 'The following program won\'t compile because there are space between macro name and open parenthesis.                           \r\n#includeMYINC (a)((a) + 1)                       \r\nint main()                                                 \r\n{                                    \r\n  printf(\"GreekQuiz!\");                        \r\n  return 0;                                                  \r\n}', 'Yes', 'no', 'Depends on the library \"stdio.h\"', 'Yes but will give a runtime erreo', 1, 0),
(24, 1, '#include \"stdio.h\"                             \r\n#include \"stdio.h\"                 \r\n#include \"stdio.h\"                           \r\nint main()                                                  \r\n{                                              \r\n  printf(\"whether this statement would be printed?\");               \r\n  return 0;                                                 \r\n}    ', 'Runtime error', 'Compilation error', 'whether this statement would be printed?', 'Compilation error on specific compilers', 3, 0),
(25, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\nvoid main()    \r\n{      \r\n   int k = 8;     \r\n   int x = 0 == 1 && k++;     \r\n   printf(\"%d%d\\n\" , x , k);    \r\n} ', 'a = 0 , b = 3     a = 0 , b = 3', 'a = 3 , b = 0     a = 12 , b = 9', 'a = 3 , b = 6     a = 3 , b = 6', 'a = 6 , b = 3    a = 15 , b = 12', 4, 0),
(26, 1, '#include<stdio.h>                              \r\nint main()                                                 \r\n{                                                                 \r\n  int a , b;                                               \r\n  if(scanf (\"%d%d\" , &a , &b ) == 2)                                             \r\n    printf(\"true\");                                     \r\n  else                                          \r\n    printf(\"false\");                                 \r\n  return 0;                                                       \r\n}', 'TRUE', 'FALSE', 'Compilation error', 'Runtime error', 1, 0),
(27, 1, '#include <iostream>                    \r\nusing namespace std;                  \r\nclass X                                                   \r\n{                                                       \r\n  public:  X()                                            \r\n  {                                                        \r\n    cout<<\"X\";                                                                         \r\n  }                                                               \r\n  -X()                                                         \r\n  {                                                           \r\n    cout<<\"-X\";                                              \r\n  }                                                             \r\n};                                                         \r\nclass Y : public X                                \r\n{                                                                 \r\n  cout<<\"Y\";                                               \r\n}                  ', 'XY-Y-X', 'XY-X-Y', 'X-XY-Y', 'X-X-YY', 1, 0),
(28, 1, 'For a given integer , which of the following operators can be used to \"set\" and \"reset\" a particular bit respectively?', '| and &', '&& and||', '& and |', '|| and &&', 1, 0),
(29, 1, 'What will be output of following C code? \r\n#include<stdio.h>    \r\nvoid main()    \r\n{      \r\n   int k = 8;     \r\n   int x = 0 == 1 && k++;     \r\n   printf(\"%d%d\\n\" , x , k);    \r\n}', '0 9', '0 8', '1 8', '1 9', 2, 0),
(30, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\nvoid main()    \r\n{      \r\n  char a = \'a\';    \r\n  int x = (a % 10)++;         \r\n  printf(\"%d\\n\" , x);   \r\n}     ', '6', 'Junk value', 'Compile time error', '7', 3, 0),
(31, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\n#define A 1 + 2     \r\n#define B 3 + 4   \r\nint main()    \r\n{   \r\n  int var = A * B; \r\n  printf(\"%d\\n\" , var);    \r\n  return 0;          \r\n}', '9', '11', '12', '21', 2, 0),
(32, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\nvoid main()    \r\n{       \r\n  float x = 0.1;     \r\n  if (x == 0.1)   \r\n    printf(\"Sanfoundry\");    \r\n  else   \r\n    printf(\"Advanced C Classes\");  \r\n}', 'Advanced C Classes', 'Sanfoundry', 'Runtime error', 'Compile time error', 1, 0),
(33, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\nint main()    \r\n{    \r\n  short I;    \r\n  for(I = 1; i>=0; i++)     \r\n    printf(\"%d\\n\" , i);   \r\n}', 'The control won\'t fall into the for loop', 'Numbers will be displayed and the program will terminate', 'Numbers will be displayed and the program won\'t terminate', 'Compilation error', 2, 0),
(34, 1, 'What is the use of namespace?', 'To encapsulate data', 'To structure a program into logical units', 'Encapsulate data and structure program into logical units', 'none of the above', 2, 0),
(35, 1, 'Which of the following is correct?', 'Base class pointer object cannot point to a Derived class object', 'Derived class pointer object cannot point to a Baseclass object', 'A derived class cannot have pointer objects', 'A base class cannot have pointer objects', 2, 0),
(36, 1, 'Why references are different from pointers?', 'A reference cannot be made null', 'A reference cannot be changed once initialized', 'No extra operator is needed for dereferencing of reference', 'All of the mentioned', 4, 0),
(37, 1, 'What happens if below code is compiled on both C and C++?   \r\n#include<stdio.h>    \r\nstrct STRUCT  \r\n{   \r\n  private:    \r\n    int a;   \r\n};     \r\nint main()    \r\n{    \r\n  printf(\"%d\\n\" , (int)sizeof(struct STRUCT));   \r\n  return 0;   \r\n}', 'The program runs fine and both prints output \"HELLO THIS IS STRUCTURE\"', 'The program gives an error in case of C but runs perfectly in case of C++', 'The program gives an error in case of C++ but runs perfectly in case of C', 'The program gives an error in case of both C and C++', 2, 0),
(38, 1, 'Register keyword mandates compiler to place it in machine register?', 'TRUE', 'FALSE', 'Depends on standard', 'none of the above', 2, 0),
(39, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\nvoid main()    \r\n{     \r\n  char a[10][5] = {\"hi\" , \"hello\" , \"fellows\"};     \r\n  printf(\"%s\" , a[2]);     \r\n}', 'fellows', 'fellow', 'fello', 'fell', 3, 0),
(40, 1, 'Which of the following statements are true?      \r\nP:  Pointer to Array    \r\nQ:   Multi-dimensional array', 'P are static , Q are static', 'P are static , Q are dynamic', 'P are dynamic , Q are static', 'P are dynamic , Q are dynamic', 3, 0),
(41, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\nvoid main()    \r\n{   \r\n  int a = 2+4+3*5/3-5;   \r\n  printf(\"%d , a);    \r\n}', '7', '6', '10', '9', 2, 0),
(42, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\nint main()    \r\n{  \r\n  int a = 1 , b = 1 , d = 1 ;    \r\n  printf(\"%d, %d, %d , ++a  +  ++a+a++ , a++  +  ++b , ++d  +  d++  +  a++);   \r\n}', '15, 4, 5', '9, 6, 9', '9,3, 5', 'Undefined', 4, 0),
(43, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\nvoid main()    \r\n{   \r\n  double b = 3 % 0 * 1 - 4 / 2;   \r\n  printf(\"%If \" , b);  \r\n}', '-2', 'Floating point exception', '1', 'None of the mentioned', 2, 0),
(44, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\nint main()    \r\n{  \r\n  if(7 & 8)   \r\n    printf(\"Honesty\");\r\n  if ((~7 & 0*00f) == 8)   \r\n    printf(\"is the best policy\\n\");   \r\n}', 'Honesty is the best policy', 'Honesty', 'is the best policy', 'No output', 3, 0),
(45, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\nint main()    \r\n{  \r\n  unsigned int a = 10;   \r\n  a=~a;    \r\n  printf(\"%d\\n\" , a);   \r\n}  ', '-9', '-10', '-11', '10', 3, 0),
(46, 1, 'What will be output of following C code?   \r\n#include<stdio.h>    \r\nint main()    \r\n{   \r\n  int a + 1 , b = 2;   \r\n  a += b -= a;   \r\n  printf(\"%d %d\" , a , b);    \r\n}   ', '1 1', '1 2', '2 1', '2 2', 3, 0),
(47, 1, 'Which function in the following expression will be called first?   \r\nA = fun3(6) - fun2(4 , 5) / fun1(1 , 2 , 3);', 'fun1();', 'fun2();', 'fun3();', 'Cannot be predicted', 4, 0),
(48, 1, 'What is the scope of an external variable?', 'Whole source file in which it is defined', 'From the point of declaration to the end of the file in which it is defined', 'Any source file in a program', 'From the point of declaration to end of file being compiled', 4, 0),
(49, 1, 'Predict the output of the following C snippets {\n int main = 56;\n printf(\"%d\", main);\n return 0;\n}\n', 'Compiler Error', 'Depends on the compiler', '56', 'none of above', 3, 0),
(50, 1, 'How many times is Hello world printed ?\nint main()\n{\n    fork();\n    fork();\n    printf(\"Hello world\\n\");\n}\n', '1', '2', '4', '8', 3, 0),
(51, 1, 'What will be the output of the following C code?\n\n    #include <stdio.h>\n    void main()\n    {\n        int b = 5 & 4 & 6;\n        printf(\"%d\", b);\n    }\n', '5', '6', '3', '4', 4, 0),
(52, 1, 'What will be the output of the following C code?\n\n    #include <stdio.h>\n    void main()\n    {\n        int h = 8;\n        int b = h++ + h++ + h++;\n        printf(\"%d\\n\", h);\n    }\n', '9', '10', '12', '11', 4, 0),
(53, 1, 'What will be the output for the given code                                   \r\nprintf(?\\n The number is %07d?,1212);\r\n', 'The number is 0001212', 'The number is 1212', 'The number is 1212', 'The number is 1212000', 1, 0),
(54, 1, ' #include <stdio.h>\n    int main()\n    {\n        int *((*x)())[2];\n        x();\n        printf(\"after x\\n\");\n    }\n    int *((*x)())[2]\n    {\n        int **str;\n        str = (int*)malloc(sizeof(int)* 2);\n        return str;\n    }\n', 'Compile time error', 'Undefined behaviour', 'After x', ' None of the mentioned', 1, 0),
(55, 1, '    #include <stdio.h>\n    int main()\n    {\n        int a = 10;\n        if (a == a--)\n            printf(\"TRUE 1\\t\");\n        a = 10;\n        if (a == --a)\n            printf(\"TRUE 2\\t\");\n    }\n', 'TRUE 1', 'TRUE 2', 'TRUE 1 TRUE 2', 'Compiler dependent', 4, 0),
(56, 1, 'What will be the output of the following C code?\n\n    #include <stdio.h>\n    printf(\"%d\", sizeof(\'a\'));\n', '1', '2', '4', 'of the mentioned', 3, 0),
(57, 1, ' Functions can return enumeration constants in C?', 'true  ', 'FALSE', ' depends on the compiler', 'depends on the standard', 1, 0),
(58, 1, 'Which is correct with respect to the size of the data types?', 'char > int > float', 'int > char > float', ' char < int < double', ' double > char > int', 3, 0),
(59, 1, 'Automatic variables are allocated memory in ___________\n', 'heap', 'Data segment', 'Code segment', 'stack', 4, 0),
(60, 1, ' What will be the output of the following C code?\n\n    #include <stdio.h>\n    int main()\n    {\n        int i = 10;\n        int *p = &i;\n        printf(\"%d\\n\", *p++);\n    }\n', '10', '11', 'Garbage value', 'Address of i', 1, 0),
(61, 1, '\n What will be the output of the following C code?\n\n    #include <stdio.h>\n    void main()\n    {\n        int x = 97;\n        int y = sizeof(x++);\n        printf(\"X is %d\", x);\n    }\n                                                                                                                                                                                                                 ', 'X is 97', 'X is 98', 'X is 99', 'Runtime error', 1, 0),
(62, 1, 'Which of the following is NOT possible with any 2 operators in C?', ' Different precedence, same associativity', 'Different precedence, different associativity', 'Same precedence, different associativity', ' All of the mentioned', 3, 0),
(63, 1, ' What will be the output of the following C code?\n\n    #include <stdio.h>\n    int main()\n    {\n        int a = -1, b = 4, c = 1, d;\n        d = ++a && ++b || ++c;\n        printf(\"%d, %d, %d, %d\\n\", a, b, c, d);\n        return 0;\n    }\n', '0,4,2,1', '0,5,2,1', '(-)1,4,1,1', '0, 5, 1, 0', 1, 0),
(64, 1, ' Which variable has the longest scope in the following C code?\n\n    #include <stdio.h>\n    int b;\n    int main()\n    {\n        int c;\n        return 0;\n    }\n    int a;\n', 'a', 'b', 'c ', 'Both a and b', 1, 0),
(65, 1, ' What will be the sequence of allocation and deletion of variables in the following C code?\n\n    #include <stdio.h>\n    int main()\n    {\n        int a;\n        {\n            int b;\n        }\n    }\n', ' a->b, a->b', 'a->b, b->a', 'b->a, a->b', '', 2, 0),
(66, 1, 'Array sizes are optional during array declaration by using ______ keyword.', 'auto', 'static', 'extern', 'register', 3, 0),
(67, 1, 'What will be the output of the following C code?\n\n    #include <stdio.h>\n    int main()\n    {\n        printf(\"%d \", 1);\n        l1:l2:\n        printf(\"%d \", 2);\n        printf(\"%d\\n\", 3);\n    }\n', 'Compilation error', '1 2 3', '1 2', ' 1 3', 2, 0),
(68, 2, 'The minimum number of comparisons reqiured to determine if an integer appears more than n/2 times in a sorted array of n integers is', 'n+n+1=O(n)', 'nlogn+2=O(nlog(n))', 'logn+logn+1=O(log(n))', '(logn)*(logn)+1=O((logn)^2)', 3, 0),
(69, 2, 'Consider an array consisiting of -ve and +ve numbers. What would be the worst case time complexity of an algorithm to segregate the numbers having same sign together i.e. all +ve on one side and then all -ve on other? ', 'O(N)', 'O(NlogN)', 'O(N*N)', 'O(NloglogN)', 1, 0),
(70, 2, 'A robot is located at the top left corner of a 2*3 matrix.   The robot can only move either down or right at any point in time. The robot is trying to reach bottom right corner of the grid. How many possible unique paths are there?', '1', '2', '3', '4', 3, 0),
(71, 1, 'int main()                                            \r\n{                                                          \r\n  char *a;                                              \r\n  int *b;                                                 \r\n  if(size of(a)==size of (b))                    \r\n  {                                                \r\n    cout<<\"Done\";                                  \r\n  }                                                                \r\n  else                                                         \r\n  {                                                    \r\n    cout<<\"Error\";                                   \r\n  }                                                                \r\n}                                                       \r\nWhat will be the output of this program?   ', 'Done', 'Error', 'Compile time error', 'None of the mentioned', 1, 0),
(72, 1, '#include<iostream>\r\nusing namespace std;\r\n{                                                           \r\nint  three[3][3]={1,2,3,4,5,6,7,8,9};           \r\ncout<<three[1][1];    \r\ncout<<[0][4];                                      \r\n}                                                           \r\nWhat will be the output of the code?', '5, garbage value', '5,5;', 'Compile time error', '55', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `round2`
--

CREATE TABLE `round2` (
  `sr no` int(3) NOT NULL,
  `complexity` int(1) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `option1` varchar(1000) NOT NULL,
  `option2` varchar(1000) NOT NULL,
  `option3` varchar(1000) NOT NULL,
  `option4` varchar(1000) NOT NULL,
  `answer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `round2`
--

INSERT INTO `round2` (`sr no`, `complexity`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 2, 'The minimum number of comparisons reqiured to determine if an integer appears more than n/2 times in a sorted array of n integers is', 'n+n+1=O(n)', 'nlogn+2=O(nlog(n))', 'logn+logn+1=O(log(n))', '(logn)*(logn)+1=O((logn)^2)', 3),
(2, 2, 'Consider an array consisiting of -ve and +ve numbers. What would be the worst case time complexity of an algorithm to segregate the numbers having same sign together i.e. all +ve on one side and then all -ve on other? ', 'O(N)', 'O(NlogN)', 'O(N*N)', 'O(NloglogN)', 1),
(3, 2, 'A robot is located at the top left corner of a 2*3 matrix.   The robot can only move either down or right at any point in time. The robot is trying to reach bottom right corner of the grid. How many possible unique paths are there?', '1', '2', '3', '4', 3),
(4, 2, 'Given a positive integer 3 generate a square matrix filled with elements from 1 to n^2 in spiral order                                       \r\nInput                                                   \r\n[1,2,3]                                                 \r\n[4,5,6]                                                       \r\n[7,8,9]', '[1,2,3,4,7,8,9,5,6]', '[1,2,3,6,9,8,7,4,5]', '[3,2,1,4,7,8,9,6,5]', '[1,2,3,4,5,6,7,8,9]', 2),
(5, 2, 'What is time complexity of  following code?                                    \r\nint i, j, k=0;                                             \r\nfor(i = n/2; i<=n;i++)                           \r\n{                                                          \r\n  for(j=2; j<=n; j=j*2)                            \r\n  {                                                                 \r\n    k = k + n/2;                                             \r\n  }                                                                    \r\n}', 'O(n)', 'O(nlogn)', 'O(n^2)', 'O(n^2logn)', 2),
(6, 2, 'Certain 3 digit numbers have the following characteristics:    \r\n1. All the 3 digits are different.   \r\n2. The number is divisible by 7.  \r\n3. The number on reversing the digits is also divisible by 07.   \r\nHow many such 3 digit numbers are there?', '2', '4', '6', '8', 4),
(7, 2, 'In which of the following case assignment error will be generated?', '(1|y==1)', '(1|(y==1))', '(1|y=1)', '(1|(y=1)', 3),
(8, 2, 'What is recurrence for worst case of Quicksort and what is the time complexity in worst case?', 'Recurrence is T(n) = T(n-2) + O(n) and time complexity is O(n^2)', 'Recurrence is T(n) = T(n-1) + O(n) and time complexity is O(n^2)', 'Recurrence is T(n) = 2T(n/2) + O(n) and time complexity is O(nlogn)', 'Recurrence is T(n) = T(n/10) + T(9n/10) and time complexity is O(nlogn)', 2),
(9, 2, 'Given input matrix = Rotate the image by 90 degree (clockwise)                                           \r\n[[1,2,3],                                              \r\n[4,5,6],                                                   \r\n[7,8,9]]                                                              \r\nRotate the input matrix in-place such that it becomes:                         \r\n[[7,4,1],                                               \r\n[8,5,2],                                                  \r\n[9,6,3]]                                                            \r\nWhich of the logic can be used?', 'Swap 1st and 3rd column and find transpose', 'Swap 1st and 2nd column and find transpose', 'Find transpose and swap 1st and 2nd column', 'Find transpose and swap 1st and 3rd column', 4),
(10, 2, 'The tightest lower bound on the number of comparisons, in the worst case, for comparison-based sorting is of order_____', 'N ', 'N^2', 'NlogN', 'N(logN)^2', 3),
(11, 2, 'Consider the following program fragment for reversing the digits in a given integer to obtain a new integer.                                   \r\nLet n= D1D2?..Dm                          \r\nint n,v=rev;                                \r\nrev=0;                                          \r\nwhile(n>0)                                            \r\n{                                                                \r\n  rev = rev*10 + n%10;                            \r\n  n= n/10;                                                  \r\n}                                                           \r\nthe loop invariant condition at the end of the ith iteration is:', 'n = D1D2?.Dm-I and rev = DmDm-1?..Dm-i+1', 'n = Dm-i+1?Dm-1Dm and rev = Dm-1?.D2D1', 'n!=rev', 'n = D1D2?.Dm and rev = DmDm-1?..D2D1', 1),
(12, 2, 'Let w(n) and A(n) denote respectively, the worst and average case running time of an algorithm executed on an input of size n.                                             \r\nWhich of the following is always:                                                 \r\n(a) A(n) = \\Omega(W(n))                  \r\n(b) A(n) = \\Theta(W(n))                 \r\n(c) A(n) = O(W(n))                              \r\n(d) A(n) = O(W(n)) ', 'a', 'b', 'c', 'd', 3),
(13, 2, 'Six identical cards are placed on a table. Each card has number \'1\' marked on one side  and number \'2\' on its another side. All the six cards are placed in such manner that the number \'1\' is on the upper side. In one try, exactly four (neither more nor less) cards are turned upside down. In how many least number of tries can the cards be turned upside down such that all the six cards show number \'2\' on the upper side?', '3', '5', '7', 'this cannot be achieved', 1),
(14, 2, 'n! means n ? (n ? 1) ? ... ? 3 ? 2 ? 1 For example, 10! = 10 ? 9 ? ... ? 3 ? 2 ? 1 = 3628800, and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27. Find the sum of the digits in the number 100!', '648', '468', '864', '450', 1),
(15, 2, 'By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13. What is the 10 001st prime number?', '104733', '104743', '104700', '104855', 2),
(16, 2, 'An unordered list contains n distinct elements. The number of comparisons to find an element in this list that is neither maximum nor minimum is', '?(nlogn)', '?(n)', '?(logn)', '?(1)', 4),
(17, 2, 'Let T(n) be a function defined by the recurrence T(n) = 2T(n/2) + ?n for n ? 2 and T(1) = 1 Which of the following statements is TRUE?  ', 'T(n) = ?(log n)', 'T(n) = ?(?n)', 'T(n) = ?(n)', 'T(n) = ?(n log n)', 3),
(18, 2, 'Find the sum of all the 4 digit numbers that can be formed with the digits 3, 4, 5 and 6', '119988', '11988', '191988', 'None of these', 1),
(19, 2, 'The auxiliary space of insertion sort is O(1), what does O(1) mean ?', 'The memory (space) required to process the data is not constant.', 'It means the amount of extra memory Insertion Sort consumes doesn\'t depend on the input. The algorithm should use the same amount of memory for all inputs', 'It takes only 1 kb of memory .', 'It is the speed at which the elements are traversed.', 2),
(20, 2, 'If T1 = O(1), give the correct matching for the following pairs:                                                    \r\n1->(M) Tn=Tn?1+n  (N) Tn=Tn/2 +n  (O) Tn=Tn/2 +nlogn  (P) Tn=Tn?1 +logn                            \r\n2->(U) Tn=O(n)  (V) Tn=O(nlogn)  (W) T=O(n^2)  (X) Tn=O(log^2n)', 'A)M-W N-V O-U P-X', 'B)M-W N-U O-X P-V', 'C)M-V N-W O-X P-U', 'D)M-W N-U O-V P-X', 3),
(21, 2, 'A bag contains 19 red balls and 19 black balls. Two balls are removed at a time repeatedly and discarded if they are of the same colour, but if they are different, black ball is discarded and red ball is returned to the bag. The probability that this process will terminate with one red ball is', 'A)1', 'B)1/21', 'C)2/3', 'D)0.5', 1),
(22, 2, 'If C is a skew-symmetric matrix of order n and X is n x 1 column matrix, then XTCX is a', 'A)scalar matrix', 'B)null matrix', 'C)unit matrix', 'D)matrix will all elements 1', 2),
(23, 2, 'Which of the following permutation can be obtained in the same order using a stack assuming that input is the sequence 5, 6, 7, 8, 9 in that order?', 'A)7, 8, 9, 5, 6', 'B)5, 9, 6, 7, 8', 'C)7, 8, 9, 6, 5', 'D)9, 8, 7, 5, 6', 3),
(24, 2, 'A process executes the following code for (i = 0; i < n; i++) fork( ); The total number of child processes created are', 'A)n2', 'B(2n+1 -1', 'C)2n', 'D)2n -1', 4),
(25, 2, 'To determine the efficiency of an algorithm the time factor is measured by:', 'A)Counting micro seconds', 'B)Counting number of key operations', 'C)Counting number of statements', 'D)Counting kilobytes of algorithm ', 2),
(26, 2, 'Let T(n) be defined by T(1) = 10 and T(n + 1) = 2n + T(n) and for all integers n ? 1 . Which of the following represents the order of growth of T(n) as a function of', 'A)O(n)', 'b)O(n log n)', 'C)O(n^2)', 'D)O(n^3', 3),
(27, 2, 'Let f(n) and g(n) be asymptotically non-negative functions. Which of the following is correct?', 'A)? ( f (n)*g(n)) = min (f (n), g(n))', 'B)? ( f (n)*g(n)) = max (f (n), g(n))', 'C)?( f (n) + g(n)) = min (f (n), g(n))', 'D)? ( f (n) + g(n)) = max (f (n), g(n))', 4),
(28, 2, 'Assume A and B are non-zero positive integers. The following code segment                                   \r\nwhile (A!=B)                                           \r\n{ \r\n  If(A>B)                                                       \r\n    A ? = B;                                             \r\n  else \r\n    B ? = A ;                                        \r\n} \r\ncout << A;', '(A) Computes the LCM of two numbers', '(B) Divides the larger number by the smaller number', '(C) Computes the GCD of two numbers', '(D) Finds the smaller of two numbers', 3),
(29, 2, 'int f (int x)                                            \r\n{ \r\n  if (x < 1) \r\n    return 1;                             \r\n  else \r\n    return (f(x-1) + g(x))               \r\n}                                                             \r\nint g(int x)                                          \r\n{ \r\n  if (x < 2) \r\n    return 2;                                \r\n  else \r\n    return (f(x-1) + g(x/2));          \r\n}                                                                    \r\nOf the following, which best describes the growth of f(x) as a function of x?', '(A) Linear', '(B) Exponential', '(C) Quadratic', '(D) Cubic', 2),
(30, 2, 'Suppose we have a O(n) time algorithm that finds median of an unsorted array.                                   \r\nNow consider a QuickSort implementation where we first find median using the above algorithm, then use median as pivot. \r\nWhat will be the worst case time complexity of this modified QuickSort.', '(A) O(n^2 Logn)', '(B) O(n^2)', '(C) O(n Logn Logn)', '(D) O(nLogn)', 4),
(31, 2, 'A class of 30 students occupy a classroom containing 5 rows of seats, with 8 seats in each row. If the students seat themselves at random, the probability that the sixth seat in the fifth row will be empty is', '(A) 1/5', '(B) 1/3', '(C) 1/4', '(D) 2/5', 3),
(32, 2, 'In unit testing of a module, it is found that for a set of test data, at the maximum 90% of the code alone were tested with the probability of success 0.9. The reliability of the module is', '(A) Greater than 0.9', '(B) Equal to 0.9', '(C) At most 0.81', '(D) At least 0.81', 3),
(33, 2, 'Choose the correct statement:', '(A) A = {an bn | n = 1, 2, 3, ?. } is a regular language', '(B) The set B, consisting of all strings made up of only a?s and b?s having equal number of a?s and b?s defines a regular language', '(C) L(A * B) ? B gives the set A', '(D) None of the above', 4),
(34, 2, 'What is the output of the following program ?                 \r\nmain ()                                                   \r\n{ \r\n  int x = 2, y = 5;                                      \r\n  if(x < y) \r\n    return (x = x + y);                      \r\n  else \r\n    printf (\"z1\");                     \r\n  printf(\"z2\");\r\n}', '(A) z2', '(B) z1z2', '(C) Compilation error', '(D) None of these', 4),
(35, 2, 'The time complexity of computing the transitive closure of binary relation on a set of n elements is known to be', '(A) O(n)', '(B) O(n log n)', '(C) O(n 3/2)', '(D) O(n 3)', 4),
(36, 2, 'The worst case running times of Insertion sort, Merge sort and Quick sort, respectively, are:', '(A) ?(n log n), ?(n log n) and ?(n2)', '(B) ?(n2), ?(n2) and ?(n Log n)', '(C) ?(n2), ?(n log n) and ?(n log n)', '(D) ?(n2), ?(n log n) and ?(n2)', 4),
(37, 2, 'The maximum number of edges in a n-node undirected graph without self loops is', '(A) n2', '(B) n(n-1)/2', '(C) n-1', '(D) n(n+1)/2', 2),
(38, 2, 'What will be output of the following program? Assume that you are running this program in little-endian processor.                                                      #include<stdio.h> \n  \nint main() { \n    short a = 320; \n    char * ptr; \n    ptr = (char * ) & a; \n    printf(\"%d\", * ptr); \n    return 0; \n} ', '(A) 1', '(B) 320', '(C) 64', '(D) Compilation error', 3),
(39, 2, 'The boolean expression AB + AB?+ A?C + AC is independent of the boolean variable', '(A) A', '(B) B', '(C) C', '(D) None of these', 2),
(40, 2, 'The time complexity of the following C function is (assume n > 0)                                                   \r\nint recursive (int n)                           \r\n{ \r\n  if(n == 1) \r\n    return (1);                         \r\n  else \r\n    return (recursive (n-1) + recursive (n-1)); \r\n}', '(A) O(n)', '(B) O(n log n)', '(C) O(n2)', '(D) O(2n)', 4),
(41, 2, 'The output of the following program is                                                       \r\nmain()\r\n{\r\n  static int x[] = {1,2,3,4,5,6,7,8}\r\n  int i;\r\n  for (i=2; i<6; ++i)\r\n    x[x[i]]=x[i];\r\n  for (i=0; i<8; ++i)\r\n    printf(\"%d\", x[i]);\r\n} ', '(A) 1 2 3 3 5 5 7 8', '(B) 1 2 3 4 5 6 7 8', '(C) 8 7 6 5 4 3 2 1', '(D) 1 2 3 5 4 6 7 8', 1),
(42, 2, 'Let A be a finite set having x elements and let B be a finite set having y elements. What is the number of distinct functions mapping B into A.', '(A) xy', '(B) 2(x+y)', '(C) yx', '(D) y! / (y-x)!', 1),
(43, 2, '476 ** 0 is divisible by both 3 and 11. The non-zero digits in the hundred\'s and ten\'s places are respectively:', '7 and 4', '7 and 5', '8 and 5', 'None of these', 3),
(44, 2, 'Let G be a graph with n vertices and m edges. What is the tightest upper bound on the running time on Depth First Search of G? Assume that the graph is represented using adjacency matrix.', '(A) O(n)', '(B) O(m+n)', '(C) O(n2)', '(D) O(mn)', 3),
(45, 2, 'Consider the following pseudo code. What is the total number of multiplications to be performed?                                           \r\nD = 2\r\nfor i = 1 to n do\r\n   for j = i to n do\r\n      for k = j + 1 to n do\r\n           D = D * 3', '(A) Half of the product of the 3 consecutive integers.', '(B) One-third of the product of the 3 consecutive integers.', '(C) One-sixth of the product of the 3 consecutive integers.', '(D) None of the above.', 3),
(46, 2, 'Let, x1?x2?x3?x4 = 0 where x1, x2, x3, x4 are Boolean variables, and ? is the XOR operator.Which one of the following must always be TRUE?', '(A) x1x2x3x4 = 0', 'x1x3+x2 = 0', ' x?1?x?3=x?2?x?4', 'x1+x2+x3+x4 = 0', 3),
(47, 2, 'Consider the following program:\r\nint f(int *p, int n) \r\n{ \r\n    if (n <= 1) return 0; \r\n    else return max(f(p+1,n-1),p[0]-p[1]); \r\n} \r\nint main() \r\n{ \r\n    int a[] = {3,5,2,6,4}; \r\n    printf(\"%d\", f(a,5)); \r\n} \r\nNote: max(x,y) returns the maximum of x and y. The value printed by this program is', '5', '2', '3', '4', 3),
(48, 2, 'Consider the following statements:                                         \r\nP: Good mobile phones are not cheap                                                     \r\nQ: Cheap mobile phones are not good                                                          \r\nL: P implies Q                                    \r\nM: Q implies P                                     \r\nN: P is equivalent to Q            \r\nWhich one of the following about L, M, and N is CORRECT? ', '(A) Only L is TRUE.                         ', '(B) Only M is TRUE.                        ', '(C) Only N is TRUE.                           ', '(D) L, M and N are TRUE', 4),
(49, 2, 'Let X denote the Exclusive OR (XOR) operation. Let ?1? and ?0? denote the binary constants. Consider the following Boolean expression for F over two variables P and Q:                              F(P, Q) = ((1 X P)X(P X Q))X((P X Q) X (Q X 0))                                  \r\nThe equivalent expression for F is', '(A) P + Q', '(B) (P + Q)?', '(C) P X Q', '(D) (P X Q)', 4),
(50, 2, 'Which combination of the integer variables x, y and z makes the variable a get the value 4 in the following expression?                                          \r\na = (x > y) ? ((x > z) ? x : z) : ((y > z) ? y : z) ', '(A) x = 3, y = 4, z = 2', '(B) x = 6, y = 5, z = 3', '(C) x = 6, y = 3, z = 5', '(D) x = 5, y = 4, z = 5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `sr no` int(3) NOT NULL,
  `uid` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `r1m` int(3) NOT NULL,
  `r1i` int(3) NOT NULL,
  `r1s` int(10) NOT NULL,
  `r1f` int(3) NOT NULL,
  `r2m` int(3) NOT NULL,
  `r2i` int(3) NOT NULL,
  `r2s` int(3) NOT NULL,
  `r2f` int(3) NOT NULL,
  `round` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sr no`, `uid`, `name`, `mobile`, `email`, `r1m`, `r1i`, `r1s`, `r1f`, `r2m`, `r2i`, `r2s`, `r2f`, `round`) VALUES
(1, 'TW000', 'Uday', '9422088829', 'a@gmail.com', 2, 3, 55, 2, 0, 0, 0, 0, 1),
(2, 'TW001', 'Nalini', '9890574732', 'a@gmail.com', 0, 4, 56, 0, 0, 0, 0, 0, 1),
(3, 'TW002', 'tpv', '9420809304', 'a@gmail.com', 1, 0, 59, 1, 0, 0, 0, 0, 1),
(4, 'TW003', 'Shraddha Nahar', '7972162235', 'artinaharo5@gmail.com', 19, 36, 0, 19, 3, 8, 19, -2, 3),
(5, 'TW004', 'Princy Ramteke', '8862098175', 'princyramteke11111@gmail.com', 16, 31, 13, 16, 0, 0, 0, 0, 2),
(6, 'TW005', 'Aashutosh Singh', '9828928843', 'aashutosh.singh0405@gmail.com', 19, 41, 0, 19, 3, 3, 24, 3, 3),
(7, 'TW006', 'Ruchita Potamsetti', '9422488094', 'amulya0804@gmail.com', 14, 29, 4, 14, 0, 0, 0, 0, 1),
(8, 'TW007', 'Rajat Jaiswal', '7972182520', 'rajatjaiswal252@gmail.com', 24, 36, 0, 24, 13, 6, 11, 20, 4),
(9, 'TW008', 'Saundarya', '8709932157', 'saundarya297@gmail.com', 10, 44, 0, 10, 0, 0, 0, 0, 1),
(10, 'TW009', 'Vaishnodevi Ghodake', '8308867270', 'vaishnodevighodake10@gmail.com', 7, 19, 31, 7, 0, 0, 0, 0, 1),
(11, 'TW010', 'Apoorv Bedmutha', '8552899235', 'apoorvbedmutha@gmail.com', 23, 37, 0, 23, 7, 9, 14, 5, 3),
(12, 'TW011', 'Yash Zod', '9511886241', 'yashzod748@gmail.com', 19, 37, 4, 19, 9, 6, 15, 12, 4),
(13, 'TW012', 'Tejas Yadav', '8080041151', 'tejasyadav2001@gmail.com', 14, 46, 0, 14, 0, 0, 0, 0, 1),
(14, 'TW013', 'Karan koli', '9309940796', 'karanrkoli360@gmail.com', 19, 41, 0, 19, 7, 14, 9, 0, 3),
(15, 'TW014', 'Pratik Maral', '8788433974', 'pratikmaral23@gmail.com', 11, 49, 0, 11, 0, 0, 0, 0, 1),
(16, 'TW015', 'Niraj Lohani', '7057512922', 'nlohani20@gmail.com', 23, 37, 0, 23, 5, 8, 17, 2, 3),
(17, 'TW016', 'Ritik Sharma', '7354614003', 'ritik1488@gmail.com', 11, 42, 7, 11, 0, 0, 0, 0, 1),
(18, 'TW017', 'Sanhita Patil', '9359427559', 'sanhitapatil20000@gmail.com', 10, 50, 0, 10, 0, 0, 0, 0, 1),
(19, 'TW018', 'Kshitija Sole', '9890402447', 'kshitijasole@gmail.com', 11, 38, 11, 11, 0, 0, 0, 0, 1),
(20, 'TW019', 'Shreyas Agadi', '8308017717', 'agadishreyas@gmail.com', 19, 41, 0, 19, 10, 20, 0, 0, 3),
(21, 'TW020', 'Nandini Mutha', '9545325059', 'muthanandini99@gmail.com', 23, 37, 0, 23, 2, 25, 3, -21, 3),
(22, 'TW021', 'Purva Nale', '7507120695', 'purvanale@gmail.com', 21, 39, 0, 21, 5, 19, 6, -9, 3),
(23, 'TW022', 'Utkarsha Mendhe', '8806151442', 'utkarshamendhe7@gmail.com', 10, 50, 0, 10, 0, 0, 0, 0, 1),
(24, 'TW023', 'Kumar Avishrant', '9102938363', 'avishrantsingh@gmail.com', 17, 43, 0, 17, 5, 10, 15, 0, 3),
(25, 'TW024', 'Satyam Shivam', '7979804838', 'satyamshivam9798@gmail.com', 16, 44, 0, 16, 5, 5, 20, 5, 3),
(26, 'TW025', 'Muskan Jain', '9636572780', 'jainmusku077@gmail.com', 14, 45, 1, 14, 0, 0, 0, 0, 1),
(27, 'TW026', 'Asmita Mahale', '9307406877', 'asmumahadik@gmail.com', 12, 48, 0, 12, 0, 0, 0, 0, 1),
(28, 'TW027', 'Ayushmaan Krishan Dhar', '9307806595', 'ayushmaandhar@gmail.com', 17, 43, 0, 17, 0, 9, 21, -9, 3),
(29, 'TW028', 'Ritika Gupta', '9146032668', 'guptaritika0699@gmail.com', 16, 29, 0, 16, 5, 9, 16, 1, 3),
(30, 'TW029', 'Snehal Marne', '7218972064', 'snehalvmarne.1@gmail.com', 23, 28, 1, 23, 7, 11, 12, 3, 3),
(31, 'TW030', 'Piyush Kautkar', '8793575479', 'piyushbkautkar@gmail.com', 14, 46, 0, 14, 0, 0, 0, 0, 1),
(32, 'TW031', 'Kunal Patil', '9113932300', 'kunaldineshpatil@gmail.com', 14, 46, 0, 14, 0, 0, 0, 0, 1),
(33, 'TW032', 'Kuwer Bhendarkar', '9145641425', 'Bhendarkarkuwer@gmail.com', 30, 29, 1, 30, 12, 4, 14, 20, 4),
(34, 'TW033', 'Jaywant Shinde', '8788193221', 'shindejay124@gmail.com', 18, 42, 0, 18, 5, 2, 23, 8, 4),
(35, 'TW034', 'Mandar Birajdar', '9168894146', 'mandarbirajdar100@gmail.com', 14, 46, 0, 14, 0, 0, 0, 0, 1),
(36, 'TW035', 'Abhirav Gote', '7666449424', 'abhiravgote133@gmail.com', 20, 40, 0, 20, 4, 3, 23, 5, 3),
(37, 'TW036', 'Shounak Kshirsagar', '6260151369', 'shounak287@gmail.com', 13, 47, 0, 13, 0, 0, 0, 0, 1),
(38, 'TW037', 'Abhishek Kumar', '8210177081', 'abhishekk6798@gmail.com', 12, 48, 0, 12, 0, 0, 0, 0, 1),
(39, 'TW038', 'Shweta Ambarkhane', '8605969283', 'shweta.amb001@gmail.com', 20, 40, 0, 20, 7, 20, 3, -6, 3),
(40, 'TW039', 'Anuja Aher', '7385781638', 'anuja7385@gmail.com', 19, 39, 0, 19, 9, 11, 10, 7, 4),
(41, 'TW040', 'Prajakta Mankar', '9021705148', 'prajaktamankar8944@gmail.com', 4, 28, 1, 4, 0, 0, 0, 0, 1),
(42, 'TW041', 'Shubham Garud', '8956886477', 'shubhamgarud20005@gmail.com', 25, 33, 0, 25, 5, 14, 11, -4, 3),
(43, 'TW042', 'Chaitanya Deshmukh', '9172266815', 'chaitanyadeshmukh712@gmail.com', 15, 41, 0, 15, 0, 0, 0, 0, 1),
(44, 'TW043', 'Aditya Hon', '9422950799', 'adityahon911@gmail.com', 12, 35, 13, 12, 0, 0, 0, 0, 1),
(45, 'TW100', 'Gaurav', '8698475682', 'sgujarathi17699@gmail.com', 0, 0, 0, 0, 0, 0, 0, 0, 1),
(46, 'TW200', 'Rutika Patil', '7841036926', 'sgujarathi17699@gmail.com', 0, 0, 0, 0, 0, 0, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `round1`
--
ALTER TABLE `round1`
  ADD PRIMARY KEY (`sr no`);

--
-- Indexes for table `round2`
--
ALTER TABLE `round2`
  ADD PRIMARY KEY (`sr no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`sr no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `round2`
--
ALTER TABLE `round2`
  MODIFY `sr no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `sr no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
