#Alyssa Schaeffer

#LAB QUESTION Q1: I would type in > 12 %% 5 and the remainder would be 2.
> 12%%5
[1] 2

#Q2: See attached graph "Basics in R 1 Question 2 Graph AS".
> x <- 1:10
> x
[1]  1  2  3  4  5  6  7  8  9 10
> y <- 1/1:10
> y
[1] 1.0000000 0.5000000 0.3333333 0.2500000 0.2000000 0.1666667 0.1428571 0.1250000
[9] 0.1111111 0.1000000
> plot(x,y) #See attached graph "Basics in R 1 Question 2 Graph AS".

#Q3:
> rep(1:5,rep(3,5))
[1] 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5
#The input calls for a sequence of 1 through 5, and for each number in the  
#sequence to be repeated three times, ending with the number 5. The output  
#repeats each number in the sequence 1 through 5 three times. 

> rep(1:5,1:5)
[1] 1 2 2 3 3 3 4 4 4 4 5 5 5 5 5
#The input calls for a sequence of numbers 1 through 5 to be repeated a number 
#of times equal to that number. The output repeats 1 just one time, then 
#repeats 2 two times, 3 three times, etc.

> rep(1:5,c(1,2,3,2,1))
[1] 1 2 2 3 3 3 4 4 5
#The input calls for a sequence of 1 through 5, and for each number to be
#repeated a specific number of times. The output repeats 1 one time, then
#repeats 2 two times, 3 three times, 4 two times, and 5 one time.

> rep(c("A","B","C"),c(4,3,2))
[1] "A" "A" "A" "A" "B" "B" "B" "C" "C"
#The input calls for a sequence of A, B, and C, and for each variable to be 
#repeated a specific number of times. A is repeated four times, B is repeated 
#three times, and C is repeated two times.

#While the lines of code above all generate repeats, each has a different output
#because the input is unique to each line of code. Each line of code starts with
#the same command, but the instructions that follow differs for each.

#Q4:
#My code to generate a vector of even number from 0 to 100 is as follows:
> evens <- seq(0,100, by=2)
> evens
[1]   0   2   4   6   8  10  12  14  16  18  20  22  24  26  28  30  32  34  36  38  40  42
[23]  44  46  48  50  52  54  56  58  60  62  64  66  68  70  72  74  76  78  80  82  84  86
[45]  88  90  92  94  96  98 100
> y <- evens
> y
[1]   0   2   4   6   8  10  12  14  16  18  20  22  24  26  28  30  32  34  36  38  40  42
[23]  44  46  48  50  52  54  56  58  60  62  64  66  68  70  72  74  76  78  80  82  84  86
[45]  88  90  92  94  96  98 100

#Sum = 2550, Mean = 50, Standard Deviation = 29.73, Variance = 884, Median = 50, 
#Maximum = 100, Minimum = 0, 1st Quartile = 25, 3rd Quartile = 75
> sum(y)
[1] 2550
> sd(y)
[1] 29.73214
> var(y)
[1] 884
> summary(y)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0      25      50      50      75     100 

#Q5:
> y <- c(8,3,5,7,6,6,8,9,2,3,9,4,10,4,11)
#The vector below indicates if a value in vector y is even or odd, using 0 and 1,
#where 0 indicates an even number, and 1 indicates a negative number.
> y%%2
[1] 0 1 1 1 0 0 0 1 0 1 1 0 0 0 1

#The address for those values is 1, 5, 6, 7, 9, 12, 13, 14
> even <- (y%%2 == 0)
> even_addresses <- which(even)
> even_addresses
[1]  1  5  6  7  9 12 13 14

#Q6
#A: 23.53
> 400/17
[1] 23.52941

#B: 567
> 12*((6*15)/(40/21))
[1] 567

#C: 6.3
> 250^(1/3)
[1] 6.299605

#D: 3
> log10(1000)
[1] 3

#Q7
#A: 
> x <- seq(0, 16, by = 4)
> x
[1]  0  4  8 12 16

#B:
> x <- seq(0.3, by = 0.3, 1.5)
> x
[1] 0.3 0.6 0.9 1.2 1.5

#C:
> x <- seq(0, by = -10, -40)
> x
[1]   0 -10 -20 -30 -40

#D:
> x <- rep(c("tropics", "temperate", "boreal"), c(3,3,3))
> x
[1] "tropics"   "tropics"   "tropics"   "temperate" "temperate" "temperate" "boreal"   
[8] "boreal"    "boreal" 

#Q8:
#Sum = 55, Mean = 4.58, Length = 12
> y = c(5, 3, 8, 2, 9, 3, 6, 9, 1, 0, 2, 7)
> sum(y)
[1] 55
> mean(y)
[1] 4.583333
> length(y)
[1] 12

#Q9:
#Ascending: 0 1 2 2 3 3 4 5 6 6 7 8 8 9 9 
#Descending: 9 9 8 8 7 6 6 5 4 3 3 2 2 1 0
> y = c(3, 9, 6, 1, 9, 4, 7, 8, 2, 6, 3, 8, 0, 2, 5)
> sort(y)
[1] 0 1 2 2 3 3 4 5 6 6 7 8 8 9 9
> sort(y, decreasing = T)
[1] 9 9 8 8 7 6 6 5 4 3 3 2 2 1 0

#Q10
#A: setwd() function stands for "set working directory" and is used to change
#the current working directory. The new directory you want R to use as default
#must be input between the parentheses. The function accepts one argument,
#represented by a character string (the file path to the new directory), and it
#must be enclosed in quotes within the parentheses.

#B: read.table() function reads a file in table format and creates a data frame 
#from it. This function can accept a wide range of arguments to create the 
#desired output. Often, the arguments include the path to the file, the 
#header, column names, row names, and the character string that separates
#individual columns and rows.

#C: names() function sets the names of elements in the code. The function uses
#two arguments depending on the situation. For example, names(x), would output
#all of that element's labeled data. On the other hand, names(x) <- name change
#would change the element formally known as x to the new name right of the arrow.

#D: attach() function adds a database, data frame, or list to R. This function
#enables the user to access these sources of data by name directly in their
#code. The arguments used are the database/data frame/list, pos which is an
#integer that places the database in the search path, and the name of the 
#database in the search path.

#E: range() function outputs a vector containing the minimum and maximum of all
#the given arguments. The arguments are any number of vectors, na.rm which is a
#logical value that indicates whether a missing value must be removed before
#running the code, and finite which is another logical value that indicates if
#non-finite elements should be omitted.

#Q11
#A:
> df <- read.table('orangutanCSV.csv')
> df
       V1        V2        V3       V4     V5
1  individual location weight.kg    sex Tool.use
2           A   Borneo       105   male        T
3           B   Borneo        72   male        F
4           C   Borneo        60   male        F
5           D   Borneo        43 female        T
6           E   Borneo        41 female        T
7           F   Borneo        38 female        T
8           G   Borneo        33 female        F
9           H  Sumatra       110   male        F
10          I  Sumatra        81   male        F
11          J  Sumatra        77   male        T
12          K  Sumatra        42 female        T
13          L  Sumatra        38 female        T
14          M  Sumatra        37 female        F
15          N  Sumatra        32 female        T
16          O  Sumatra        30 female        F

> apes <- df
> apes
       V1       V2        V3        V4     V5
1  individual location weight.kg    sex Tool.use
2           A   Borneo       105   male        T
3           B   Borneo        72   male        F
4           C   Borneo        60   male        F
5           D   Borneo        43 female        T
6           E   Borneo        41 female        T
7           F   Borneo        38 female        T
8           G   Borneo        33 female        F
9           H  Sumatra       110   male        F
10          I  Sumatra        81   male        F
11          J  Sumatra        77   male        T
12          K  Sumatra        42 female        T
13          L  Sumatra        38 female        T
14          M  Sumatra        37 female        F
15          N  Sumatra        32 female        T
16          O  Sumatra        30 female        F

#B:
#The column names of apes from left to right are "V1/individual", "V2/location",
#"V3/weight.kg", "V4/sex", and "V5/Tool.use". Continuous data falls under the 
#column "V3/weight.kg", while categorical data falls under the remainder of the 
#columns, "V1/individual", "V2/location", "V4/sex", and "V5/Tool.use".
> apes
       V1       V2        V3        V4     V5
1  individual location weight.kg    sex Tool.use
2           A   Borneo       105   male        T
3           B   Borneo        72   male        F
4           C   Borneo        60   male        F
5           D   Borneo        43 female        T
6           E   Borneo        41 female        T
7           F   Borneo        38 female        T
8           G   Borneo        33 female        F
9           H  Sumatra       110   male        F
10          I  Sumatra        81   male        F
11          J  Sumatra        77   male        T
12          K  Sumatra        42 female        T
13          L  Sumatra        38 female        T
14          M  Sumatra        37 female        F
15          N  Sumatra        32 female        T
16          O  Sumatra        30 female        F

#C
#C.1:
> apes[apes$V2=="Borneo",]
  V1   V2    V3    V4  V5
2  A Borneo 105   male  T
3  B Borneo  72   male  F
4  C Borneo  60   male  F
5  D Borneo  43 female  T
6  E Borneo  41 female  T
7  F Borneo  38 female  T
8  G Borneo  33 female  F

#C.2:
> apes[apes$V4=="male",]
   V1    V2    V3  V4  V5
2   A  Borneo 105 male  T
3   B  Borneo  72 male  F
4   C  Borneo  60 male  F
9   H Sumatra 110 male  F
10  I Sumatra  81 male  F
11  J Sumatra  77 male  T

> males <- apes[apes$V4=="male",]
> males
   V1    V2    V3  V4  V5
2   A  Borneo 105 male  T
3   B  Borneo  72 male  F
4   C  Borneo  60 male  F
9   H Sumatra 110 male  F
10  I Sumatra  81 male  F
11  J Sumatra  77 male  T

> males[rev(order(males$V3)),]
   V1    V2    V3  V4  V5
9   H Sumatra 110 male  F
2   A  Borneo 105 male  T
10  I Sumatra  81 male  F
11  J Sumatra  77 male  T
3   B  Borneo  72 male  F
4   C  Borneo  60 male  F

#C.3: 30kg 
> apes[order(apes$V3),]
           V1     V2          V3   V4         V5
16          O  Sumatra        30 female        F
15          N  Sumatra        32 female        T
8           G   Borneo        33 female        F
14          M  Sumatra        37 female        F
7           F   Borneo        38 female        T
13          L  Sumatra        38 female        T
6           E   Borneo        41 female        T
12          K  Sumatra        42 female        T
5           D   Borneo        43 female        T
4           C   Borneo        60   male        F
3           B   Borneo        72   male        F
11          J  Sumatra        77   male        T
10          I  Sumatra        81   male        F
2           A   Borneo       105   male        T
9           H  Sumatra       110   male        F
1  individual location weight.kg    sex Tool.use

#C.4: 30kg to 43kg
> apes[apes$V4=="female",]
   V1    V2   V3   V4   V5
5   D  Borneo 43 female  T
6   E  Borneo 41 female  T
7   F  Borneo 38 female  T
8   G  Borneo 33 female  F
12  K Sumatra 42 female  T
13  L Sumatra 38 female  T
14  M Sumatra 37 female  F
15  N Sumatra 32 female  T
16  O Sumatra 30 female  F

> females <- apes[apes$V4=="female",]
> females
   V1    V2   V3   V4   V5
5   D  Borneo 43 female  T
6   E  Borneo 41 female  T
7   F  Borneo 38 female  T
8   G  Borneo 33 female  F
12  K Sumatra 42 female  T
13  L Sumatra 38 female  T
14  M Sumatra 37 female  F
15  N Sumatra 32 female  T
16  O Sumatra 30 female  F

> females <- range(females$V3)
> females
[1] "30" "43"

#C.5: 55.9kg
> apes[apes$V2=="Sumatra",]
   V1   V2    V3     V4  V5
9   H Sumatra 110   male  F
10  I Sumatra  81   male  F
11  J Sumatra  77   male  T
12  K Sumatra  42 female  T
13  L Sumatra  38 female  T
14  M Sumatra  37 female  F
15  N Sumatra  32 female  T
16  O Sumatra  30 female  F

all_weight <- apes[apes$V2=="Sumatra",]
> all_weight
   V1   V2     V3    V4  V5
9   H Sumatra 110   male  F
10  I Sumatra  81   male  F
11  J Sumatra  77   male  T
12  K Sumatra  42 female  T
13  L Sumatra  38 female  T
14  M Sumatra  37 female  F
15  N Sumatra  32 female  T
16  O Sumatra  30 female  F

> all_weight$V3
[1] "110" "81"  "77"  "42"  "38"  "37"  "32"  "30"
> sum(110,81,77,42,38,37,32,30)
[1] 447
> 447/8
[1] 55.875
#mean() kept giving an output of "110" if the numeric variables were input 
#which is not the correct mean, or it would give "NA" if the input 
#was mean(all_weight$V3).

#C.6: eight orangutans have been seen using tools.

#My current working solution:
> apes[apes$V5=='T',]
   V1     V2   V3   V4   V5
2   A  Borneo 105   male  T
5   D  Borneo  43 female  T
6   E  Borneo  41 female  T
7   F  Borneo  38 female  T
11  J Sumatra  77   male  T
12  K Sumatra  42 female  T
13  L Sumatra  38 female  T
15  N Sumatra  32 female  T

#My original solution (This is mainly for my own learning):
#(The first eight individualslisted in the below dataframe were all noted with
#"T" under the column "V5/Tool.use)
> apes[rev(order(apes$V5)),]
       V1       V2        V3        V4     V5
1  individual location weight.kg    sex Tool.use
15          N  Sumatra        32 female        T
13          L  Sumatra        38 female        T
12          K  Sumatra        42 female        T
11          J  Sumatra        77   male        T
7           F   Borneo        38 female        T
6           E   Borneo        41 female        T
5           D   Borneo        43 female        T
2           A   Borneo       105   male        T
16          O  Sumatra        30 female        F
14          M  Sumatra        37 female        F
10          I  Sumatra        81   male        F
9           H  Sumatra       110   male        F
8           G   Borneo        33 female        F
4           C   Borneo        60   male        F
3           B   Borneo        72   male        F
#When I attempted to extract rows where "V5/Tool.use was listed as "T", this is
#what I kept getting as an output:
> apes[apes$V5==T,]
[1] V1 V2 V3 V4 V5
<0 rows> (or 0-length row.names)
#If false, it was the same output:
> apes[apes$V5==F,]
[1] V1 V2 V3 V4 V5
<0 rows> (or 0-length row.names)
#I think R is treating these as a TRUE/FALSE conditional because the data is
#listed as T or F.
#LESSON: '' around variables can be necessary at times!

#C.7: 126kg

#Path to display the wanted data:
> females
[1] "30" "43"
> apes[apes$V4=="female",]
   V1     V2  V3    V4  V5
5   D  Borneo 43 female  T
6   E  Borneo 41 female  T
7   F  Borneo 38 female  T
8   G  Borneo 33 female  F
12  K Sumatra 42 female  T
13  L Sumatra 38 female  T
14  M Sumatra 37 female  F
15  N Sumatra 32 female  T
16  O Sumatra 30 female  F
> females <- apes[apes$V4=="female",]
> females
   V1    V2   V3   V4   V5
5   D  Borneo 43 female  T
6   E  Borneo 41 female  T
7   F  Borneo 38 female  T
8   G  Borneo 33 female  F
12  K Sumatra 42 female  T
13  L Sumatra 38 female  T
14  M Sumatra 37 female  F
15  N Sumatra 32 female  T
16  O Sumatra 30 female  F

#Solution:
> females[rev(order(females$V3)),]
   V1    V2   V3   V4   V5
5   D  Borneo 43 female  T
12  K Sumatra 42 female  T
6   E  Borneo 41 female  T
13  L Sumatra 38 female  T
7   F  Borneo 38 female  T
14  M Sumatra 37 female  F
8   G  Borneo 33 female  F
15  N Sumatra 32 female  T
16  O Sumatra 30 female  F

> females[females$V3>38,]
   V1    V2   V3   V4   V5
5   D  Borneo 43 female  T
6   E  Borneo 41 female  T
12  K Sumatra 42 female  T

> sum(43,41,42)
[1] 126

#Q12:
#Replacement sampling reads the vector (in this case, a vector of ten 
#unique organisms) and outputs those organism in a random order with some
#organisms listed in the output multiple times. Sampling without replacement
#however, outputs each organism one time in a random order with no repeats.
#When sampling a vector, I learned that R defaults to replace = F, meaning the 
#default is to sample without replacement.

#Original vector:
> x <- c("Cat","Dog","Red-tailed Hawk","Manta Ray","Jellyfish","Capybara",
         "Highland Cow","Grey Wolf","Red Panda","Velociraptor")
> x
[1] "Cat"             "Dog"             "Red-tailed Hawk" "Manta Ray"      
[5] "Jellyfish"       "Capybara"        "Highland Cow"    "Grey Wolf"      
[9] "Red Panda"       "Velociraptor"   

#Replacement sampling(x2):
> sample(x,length(10),replace = T))
[1] "Red Panda"       "Manta Ray"       "Red-tailed Hawk" "Highland Cow"   
[5] "Jellyfish"       "Red Panda"       "Grey Wolf"       "Dog"            
[9] "Grey Wolf"       "Capybara"       
> sample(x,length(10),replace = T))
[1] "Red-tailed Hawk" "Highland Cow"    "Dog"             "Red-tailed Hawk"
[5] "Velociraptor"    "Manta Ray"       "Cat"             "Red-tailed Hawk"
[9] "Capybara"        "Cat"  

#Sampling without replacement(x2):
> sample(x,size = 10)
[1] "Capybara"        "Red-tailed Hawk" "Grey Wolf"       "Red Panda"      
[5] "Cat"             "Jellyfish"       "Highland Cow"    "Manta Ray"      
[9] "Dog"             "Velociraptor"   
> sample(x,size = 10)
[1] "Jellyfish"       "Velociraptor"    "Dog"             "Capybara"       
[5] "Manta Ray"       "Red-tailed Hawk" "Red Panda"       "Grey Wolf"      
[9] "Highland Cow"    "Cat" 

#Q13
#A: The column names of baseballCSV.csv from left to right are "V1/Franchise",
#"V2/Games", "V3/Wins", "V4/Losses", "V5/Win.Loss.Percent", "V6/Runs.Scored",
#"V7/Runs.Allowed", "V8/Home.Games", "V9/Away.Games", "V10/Home.Wins", 
#"V11/Home.Losss" (misspelling in original spreadsheet), "V12/Away.Wins", and
#"V13/Away.Losses"

                             V1    V2   V3     V4         V5           V6
1                      Franchise Games Wins Losses Win.Loss.Percent Runs.Scored
2           Arizona.Diamondbacks    15    9      6              0.6          71
3                 Atlanta.Braves    58   30     28            0.517         247
4              Baltimore.Orioles  2151 1170    967            0.547       10217
5                   Chicago.Cubs    12    5      7            0.417          64
6              Chicago.White.Sox  1911  970    930            0.511        8260
7                Cincinnati.Reds    10    9      1              0.9          55
8              Cleveland.Indians  2009  971   1030            0.485        9078
9               Colorado.Rockies    16    8      8              0.5          94
10                Detroit.Tigers  2002 1027    962            0.516        9457
11               Florida.Marlins    30   20     10            0.667         196
12                Houston.Astros    23   17      6            0.739         146
13            Kansas.City.Royals   447  224    223            0.501        2130
14 Los.Angeles.Angels.of.Anaheim   627  332    294             0.53        2832
15           Los.Angeles.Dodgers    12    7      5            0.583          52
16             Milwaukee.Brewers   406  218    188            0.537        1978
17               Minnesota.Twins  1901  962    927            0.509        8539
18                 New.York.Mets    21   11     10            0.524          95
19              New.York.Yankees  2114  953   1147            0.454        9228
20             Oakland.Athletics  1948 1062    876            0.548        9370
21         Philadelphia.Phillies    53   31     22            0.585         307
22            Pittsburgh.Pirates     9    5      4            0.556          46
23              San.Diego.Padres    15   10      5            0.667          62
24          San.Francisco.Giants    12    8      4            0.667          72
25              Seattle.Mariners   395  227    168            0.575        2025
26           St..Louis.Cardinals    12    4      8            0.333          52
27                Tampa.Bay.Rays   294  169    125            0.575        1503
28                 Texas.Rangers   639  335    304            0.524        3137
29             Toronto.Blue.Jays   556  304    252            0.547        2794
30          Washington.Nationals    24   13     11            0.542         130
         V7         V8         V9       V10        V11       V12         V13
1  Runs.Allowed Home.Games Away.Games Home.Wins Home.Losss Away.Wins Away.Losses
2            53         12          3         7          5         2           1
3           258         29         29        13         16        17          12
4          9277       1062       1075       629        433       541         534
5            67          6          6         2          4         3           3
6          8065        950        950       559        391       411         539
7            23          5          5         5          0         4           1
8          9317       1003        998       526        477       445         553
9            85          8          8         5          3         3           5
10         9176        997        992       562        435       465         527
11          129         18         12        12          6         8           4
12           91         11         12         9          2         8           4
13         2009        226        221       126        100        98         123
14         2669        317        309       185        132       147         162
15           48          6          6         5          1         2           4
16         1877        206        200       118         88       100         100
17         8317        940        949       539        401       423         526
18           72         12          9         7          5         4           5
19        10138       1052       1048       522        530       431         617
20         8492        974        964       589        385       473         491
21          240         22         31        14          8        17          14
22           30          3          6         2          1         3           3
23           44          9          6         6          3         4           2
24           38          3          9         3          0         5           4
25         1790        193        202       119         74       108          94
26           60          6          6         2          4         2           4
27         1226        145        149        93         52        76          73
28         2967        320        319       200        120       135         184
29         2600        276        280       149        127       155         125
30          109         12         12         9          3         4           8

#B: 17,722 games played. 9,111 games won. 8,528 games lost.

> df[,c(2:4)]
     V2   V3    V4
1  Games Wins Losses
2     15    9      6
3     58   30     28
4   2151 1170    967
5     12    5      7
6   1911  970    930
7     10    9      1
8   2009  971   1030
9     16    8      8
10  2002 1027    962
11    30   20     10
12    23   17      6
13   447  224    223
14   627  332    294
15    12    7      5
16   406  218    188
17  1901  962    927
18    21   11     10
19  2114  953   1147
20  1948 1062    876
21    53   31     22
22     9    5      4
23    15   10      5
24    12    8      4
25   395  227    168
26    12    4      8
27   294  169    125
28   639  335    304
29   556  304    252
30    24   13     11

#Games played:
> Games <- sapply(df[,c(2)], is.numeric) #Done to remove text from column
> Games
Games    15    58  2151    12  1911    10  2009    16  2002    30    23   447   627    12 
FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE 
406  1901    21  2114  1948    53     9    15    12   395    12   294   639   556    24 
FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE 
> sum(Games, na.rm = T) #Unsure why this does not work
[1] 0

#Working solution:
> sum(15, 58, 2151, 12, 1911, 10, 2009, 16, 2002, 30, 23, 447, 627, 12, 406, 
      1901, 21, 2114, 1948, 53, 9, 15, 12, 395, 12, 294, 639, 556, 24)
[1] 17722

#Games won:
> Wins <- sapply(df[,c(3)], is.numeric)
> Wins
Wins     9    30  1170     5   970     9   971     8  1027    20    17   224   332     7 
FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE 
218   962    11   953  1062    31     5    10     8   227     4   169   335   304    13 
FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE 
> sum(9, 30, 1170, 5, 970, 9, 971, 8, 1027, 20, 17, 224, 332, 7, 218, 962, 11, 
      953, 1062, 31, 5, 10, 8, 227, 4, 169, 335, 304, 13)
[1] 9111

#Games lost:
> Losses <- sapply(df[,c(4)], is.numeric)
> Losses
Losses      6     28    967      7    930      1   1030      8    962     10      6    223 
FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE 
294      5    188    927     10   1147    876     22      4      5      4    168      8 
FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE  FALSE 
125    304    252     11 
FALSE  FALSE  FALSE  FALSE 
> sum(6, 28, 967, 7, 930, 1, 1030, 8, 962, 10, 6, 223, 294, 5, 188, 927, 10, 
      1147, 876, 22, 4, 5, 4, 168, 8, 125, 304, 252, 11)
[1] 8528

#C: The greatest positive difference between wins/losses is 203. The greatest 
#negative difference between wins/losses is -194.

> Wins <- c(9, 30, 1170, 5, 970, 9, 971, 8, 1027, 20, 17, 224, 332, 7, 218, 962, 
            11, 953, 1062, 31, 5, 10, 8, 227, 4, 169, 335, 304, 13)
> Wins
[1]    9   30 1170    5  970    9  971    8 1027   20   17  224  332    7  218  962   11
[18]  953 1062   31    5   10    8  227    4  169  335  304   13

> Losses <- c(6, 28, 967, 7, 930, 1, 1030, 8, 962, 10, 6, 223, 294, 5, 188, 927, 
              10, 1147, 876, 22, 4, 5, 4, 168, 8, 125, 304, 252, 11)
> Losses
[1]    6   28  967    7  930    1 1030    8  962   10    6  223  294    5  188  927   10
[18] 1147  876   22    4    5    4  168    8  125  304  252   11

> diffs <- Wins - Losses
> diffs
[1]    3    2  203   -2   40    8  -59    0   65   10   11    1   38    2   30   35    1
[18] -194  186    9    1    5    4   59   -4   44   31   52    2

> max_pos_diff <- max(diffs)
> max_pos_diff
[1] 203

> max_neg_diff <- min(diffs)
> max_neg_diff
[1] -194

#D: The Baltimore Orioles had the greatest positive difference between
#wins/losses (more wins than losses). The New York Yankees had the greatest 
#negative difference between wins/losses (more losses than wins).

#E: I cannot answer this question as the Boston Red Sox are not listed on this
#datasheet "baseballCSV.csv". This datasheet is the one we are required to use
#for this set of questions.

#F: See attached graph "Basics in R 1 Question 13F Graph AS".

#Ratio of runs allowed to runs scored:
> df[,c(6:7)]
       V6           V7
1  Runs.Scored Runs.Allowed
2           71           53
3          247          258
4        10217         9277
5           64           67
6         8260         8065
7           55           23
8         9078         9317
9           94           85
10        9457         9176
11         196          129
12         146           91
13        2130         2009
14        2832         2669
15          52           48
16        1978         1877
17        8539         8317
18          95           72
19        9228        10138
20        9370         8492
21         307          240
22          46           30
23          62           44
24          72           38
25        2025         1790
26          52           60
27        1503         1226
28        3137         2967
29        2794         2600
30         130          109

> Runs.Scored <- c(71, 247, 10217, 64, 8260, 55, 9078, 94, 9457, 196, 146, 2130,
                   2832, 52, 1978, 8539, 95, 9228, 9370, 307, 46, 62, 72, 2025, 
                   52, 1503, 3137, 2794, 130)
> Runs.Scored
[1]    71   247 10217    64  8260    55  9078    94  9457   196   146  2130  2832    52
[15]  1978  8539    95  9228  9370   307    46    62    72  2025    52  1503  3137  2794
[29]   130

> Runs.Allowed <- c(53, 258, 9277, 67, 8065, 23, 9317, 85, 9176, 129, 91, 2009, 
                    2669, 48, 1877, 8317, 72, 10138, 8492, 240, 30, 44, 38, 
                    1790, 60, 1226, 2967, 2600, 109)
> Runs.Allowed
[1]    53   258  9277    67  8065    23  9317    85  9176   129    91  2009  2669    48
[15]  1877  8317    72 10138  8492   240    30    44    38  1790    60  1226  2967  2600
[29]   109

> Runs.Allowed/Runs.Scored
[1] 0.7464789 1.0445344 0.9079965 1.0468750 0.9763923 0.4181818 1.0263274 0.9042553
[9] 0.9702866 0.6581633 0.6232877 0.9431925 0.9424435 0.9230769 0.9489383 0.9740016
[17] 0.7578947 1.0986129 0.9062967 0.7817590 0.6521739 0.7096774 0.5277778 0.8839506
[25] 1.1538462 0.8157019 0.9458081 0.9305655 0.8384615

> Runs.Allowed_Runs.Scored <- Runs.Allowed/Runs.Scored #Renaming it for the plot
> Runs.Allowed_Runs.Scored
[1] 0.7464789 1.0445344 0.9079965 1.0468750 0.9763923 0.4181818 1.0263274 0.9042553
[9] 0.9702866 0.6581633 0.6232877 0.9431925 0.9424435 0.9230769 0.9489383 0.9740016
[17] 0.7578947 1.0986129 0.9062967 0.7817590 0.6521739 0.7096774 0.5277778 0.8839506
[25] 1.1538462 0.8157019 0.9458081 0.9305655 0.8384615

#Percentage of games won (Win.Loss.Percent):
> df[,c(5)]
[1] "Win.Loss.Percent" "0.6"              "0.517"            "0.547"           
[5] "0.417"            "0.511"            "0.9"              "0.485"           
[9] "0.5"              "0.516"            "0.667"            "0.739"           
[13] "0.501"            "0.53"             "0.583"            "0.537"           
[17] "0.509"            "0.524"            "0.454"            "0.548"           
[21] "0.585"            "0.556"            "0.667"            "0.667"           
[25] "0.575"            "0.333"            "0.575"            "0.524"           
[29] "0.547" 
> df[,c(5)] <- Percentage.of.Games.Won
> Percentage.of.Games.Won <- c(0.6, 0.517, 0.547, 0.417, 0.511, 0.9, 0.485, 0.5,
                               0.516, 0.667, 0.739, 0.501, 0.53, 0.583, 0.537, 
                               0.509, 0.524, 0.454, 0.548, 0.585, 0.556, 0.667, 
                               0.667, 0.575, 0.333, 0.575, 0.524, 0.547, 0.542)
> Percentage.of.Games.Won
[1] 0.600 0.517 0.547 0.417 0.511 0.900 0.485 0.500 0.516 0.667 0.739 0.501 0.530 0.583
[15] 0.537 0.509 0.524 0.454 0.548 0.585 0.556 0.667 0.667 0.575 0.333 0.575 0.524 0.547
[29] 0.542

#Graph:
> plot(Runs.Allowed_Runs.Scored, Percentage.of.Games.Won) #See attached graph
#"Basics in R 1 Question 13F Graph AS".
