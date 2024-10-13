# A not so great explanation on how chromebooks boot.


                                                                                                                                                             Boot kernel from eMMC or USB.
                                                                                                                                                            /
                                                                                                                                                      Yes? <
                                                                                                                                                     /
                                                        Yes? --> skip kernel signing check, show developer mode screen. --> Did user press C-d/C-u? <
                                                       /                                                                                             \
User turns on device --> Is device in developer mode? <                                             Yes? --> Boot.                                    No? --> Wait 30 seconds and boot from default drive
                                                       \                                           /
                                                        No? --> check to see if kernel is signed. <
                                                                                                   \
                                                                                                    No? --> show "Missing or damaged" screen
