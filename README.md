# iskonsbank
Session Passwords Using Grids and Colors for Banking Application 
It is based on Website: www.ijetae.com (ISSN 2250-2459, ISO 9001:2008 Certified Journal, Volume 3, Issue 5, May 2013)

A. Pair-based Authentication scheme:

During registration user submits his password. Minimum length of the password is 8 and it can be called as secret pass. The secret pass should contain even number of characters. Session passwords are generated based on this secret pass. During the login phase, when the user enters his username an interface consisting of a grid is displayed. The grid is of size 6 x 6 and it consists of alphabets and numbers. These are randomly placed on the grid and the interface changes every time.

                            1 A J R H 7
                            0 K 9 I Q G
                            3 B O C P 6
                            Z L 4 S T 2
                            M Y W D 5 F
                            8 X N V E U
                      Figure 2: Login interface

Figure 3 shows the login interface. User has to enter the password depending upon the secret pass. User has to consider his secret pass in terms of pairs. The session password consists of alphabets and digits

       
                            1 A  J  R H 7
                            0 K  9 |I| Q G
                            3 B  O |C| P 6
                            Z L  4 |S| T 2
                            M Y  W |D| 5 F
                            8 X |N |V| E U
              Figure 3: Intersection letter for the pair NI


The first letter in the pair is used to select the row and the second letter is used to select the column. The intersection letter is part of the session password. This is repeated for all pairs of secret pass. Fig 3 shows that V is the intersection symbol for the pair “NI”. The password entered by the user is verified by the server to authenticate the user. If the password is correct, the user is allowed to enter in to the system. The grid size can be increased to include special characters in the password.

B. Hybrid Textual Authentication Scheme:

During registration, user should rate colors as shown in figure 4. The User should rate colors from 1 to 8 and he can remember it as “wvibgyor”. Same rating can be given to different colors. During the login phase, when the user enters his username an interface is displayed based on the colors selected by the user. The login interface consists of grid of size 8×8. This grid contains digits 1-8 placed randomly in grid cells. The interface also contains strips of colors as shown in figure 4. The color grid consists of 4 pairs of colors. Each pair of color represents the row and the column of the grid

                          W V I B G Y O R <- COLOURS
                          1 2 3 4 5 6 7 8 <- RATINGS

                      Figure 4: Rating of colors by the user

                          I B Y R G V O W <-COLOURS
                          3 4 6 8 5 2 7 1 <-RATINGS

                                1 2 3 4 5 6 7 8
                              1 5 7 8 3 1 4 2 6
                              2 8 6 4 2 3 1 5 7
                              3 3 5 6 4 7 8 1 2
                              4 2 3 5 6 8 7 4 1
                              5 7 2 1 5 4 6 8 3
                              6 1 4 7 8 2 3 6 5
                              7 4 1 2 7 6 5 3 8
                              8 6 8 3 1 5 2 7 4
                              
                            LOGIN:
                      Figure 5: Login interface
                      
 Figure 5 shows the login interface having the color grid and number grid of 8 x 8 having numbers 1 to 8 randomly placed in the grid. Depending on the ratings given to colors, we get the session password. As discussed above, the first color of every pair in color grid represents row and second represents column of the number grid. The number in the intersection of the row and column of the grid is part of the session password. Consider the figure 4 ratings and figure 5 login interfaces for demonstration. The first pair has red and yellow colors. The yellow color rating is 1 and red color rating is 2. So the first letter of session password is 3rd row and 4th column intersecting element i.e 4. The same method is followed for other pairs of colors. For figure 5 the password is “4524”. Instead of digits, alphabets can be used. For every login, both the number grid and the color grid get randomizes so the session password changes for every session.
 
 THE PAPER ON WHICH IT IS BASED ON IS ALSO UPLOADED FOR REFRENCE
 
