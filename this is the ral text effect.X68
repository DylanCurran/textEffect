*-----------------------------------------------------------
* Title      :Text Effect
* Written by :Dylan Curran
* Student No.:C00217112
* Date       :23/3/2017
* Description:text based adventure game
*-----------------------------------------------------------
    ORG    $1000
    ;these are all the variables for this game
EXIT        EQU 0           ;exits game
MAX_MONIES  EQU 5000    ; this is max money
MAX_SHIPS   EQU 3       ; this is max ships
MAX_CREW    EQU 7   ; this is max crew
CREW_COST   EQU 250 ; cost of each member
SHIP_COST   EQU 1500    ; cost of ship
START:                  ; first instruction of program

    LEA     INTRO_MESSAGE,A1
    BSR     DISPLAY
    
    LEA     WHAT_TO_TYPE,A1
    BSR     DISPLAY
    
    LEA     WELCOME_MESSAGE,A1
    BSR     PAUSE
    BSR     DISPLAY
    
        
    LEA     BACKSTORY_MESSAGE,A1
    BSR     PAUSE
    BSR     DISPLAY
    
    LEA     CHARACTER_MESSAGE,A1
    BSR     PAUSE
    BSR     DISPLAY
    
    LEA     MISSION_MESSAGE,A1
    BSR     PAUSE
    BSR     DISPLAY
    
    LEA     MISSION1_MESSAGE1,A1
    BSR     PAUSE
    BSR     DISPLAY
    BSR     TAKE_A_NUMBER
    MOVE.B  #1,D2
    CMP     D2,D1
    BEQ     ANSWER1_MISSION1P1
    MOVE.B  #2,D2
    CMP     D2,D1
    BEQ     ANSWER1_MISSION1P2

    MOVE.B  #3,D2
    CMP     D2,D1
    BEQ     ANSWER1_MISSION1P3

    MOVE.B  #4,D2
    CMP     D2,D1
    BEQ     ANSWER1_MISSION1P4

    
        
    



    
    SIMHALT             ; halt simulator
DISPLAY:
    MOVE.B  #14,D0
    TRAP    #15
    RTS

PAUSE:
    MOVE.B  #5,D0
    TRAP    #15
    RTS

TAKE_A_NUMBER:
    MOVE.B  #4,D0
    TRAP    #15
    RTS

WHAT_TO_TYPE:       DC.B    'If there is a pause press the enter key unless a number is required to continue.'
                    DC.B    $0D,$0A,0
    RTS
    
INTRO_MESSAGE:      DC.B     '  _______ ________   _________              '
                    DC.B    $0D,$0A
                    DC.B     ' |__   __|  ____\ \ / /__   __|             '
                    DC.B    $0D,$0A
                    DC.B     '    | |  | |__   \ V /   | |                '  
                    DC.B    $0D,$0A
                    DC.B     '    | |  |  __|   > <    | |                '
                    DC.B    $0D,$0A
                    DC.B     '    | |  | |____ / . \   | |                '
                    DC.B    $0D,$0A
                    DC.B     '  __|_|_ |______/_/_\_\__|_|_ _____ _______ ' 
                    DC.B    $0D,$0A
                    DC.B     ' |  ____|  ____|  ____|  ____/ ____|__   __|' 
                    DC.B    $0D,$0A 
                    DC.B     ' | |__  | |__  | |__  | |__ | |       | |   ' 
                    DC.B    $0D,$0A
                    DC.B     ' |  __| |  __| |  __| |  __|| |       | |   '
                    DC.B    $0D,$0A
                    DC.B     ' | |____| |    | |    | |___| |____   | |   '
                    DC.B    $0D,$0A
                    DC.B     ' |______|_|    |_|    |______\_____|  |_|   '
                    DC.B    $0D,$0A,0

WELCOME_MESSAGE:    DC.B    'Welcome to text effect. This is one of the textiest games ever made'
                    DC.B    $0D,$0A,0

BACKSTORY_MESSAGE:  DC.B    '==================================================='
                    DC.B    $0D,$0A
                    DC.B    'BACKSTORY'
                    DC.B    $0D,$0A
                    DC.B    '==================================================='
                    DC.B        'It is the year 2040.'
                    DC.B    $0D,$0A
                    DC.B        'Earth has used most of its resources that the human race need to survive.'
                    DC.B    $0D,$0A
                    DC.B        'Us humans must travel to other planets to gather valuable resources.'
                    DC.B    $0D,$0A
                    DC.B        'Something tells me we are not the only ones out here'
                    DC.B    $0D,$0A
                    DC.B        'Another source of life has been detected.'
                    DC.B    $0D,$0A
                    DC.B        'We do not know enough to give this race a name.'
                    DC.B    $0D,$0A
                    DC.B        'The only thing we know is: Their technology is far greater than ours'
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A 
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A,0

CHARACTER_MESSAGE:  DC.B    '==================================================='
                    DC.B    $0D,$0A
                    DC.B    'CHARACTER PLAYED INFO'
                    DC.B    $0D,$0A
                    DC.B    '==================================================='
                    DC.B    $0D,$0A
                    DC.B    'You are Private Sheppard,a new recruit to the army'
                    DC.B    $0D,$0A
                    DC.B    'As an orphan you were forced to join the army from a young age'
                    DC.B    $0D,$0A
                    DC.B    'This was the only way you could make a living'
                    DC.B    $0D,$0A
                    DC.B    'You managed to pass the armies test with ease, becoming the best in class'
                    DC.B    $0D,$0A
                    DC.B    'You were told this: "We will be sending you out on a very important mission.'
                    DC.B    $0D,$0A
                    DC.B    'This mission could benefit humanity greatly or just be a field trip'
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A,0

MISSION_MESSAGE:    DC.B    '==================================================='
                    DC.B    $0D,$0A
                    DC.B    'MISSION INFO'
                    DC.B    $0D,$0A
                    DC.B    '==================================================='
                    DC.B    $0D,$0A
                    DC.B    'You are being sent on a recon mission to gain field experience'
                    DC.B    $0D,$0A
                    DC.B    'The mission is simple, gather intelligence on a newfound planet'
                    DC.B    $0D,$0A
                    DC.B    'We are sending Captain Morgan with you to ensure your safety'
                    DC.B    $0D,$0A
                    DC.B    'He is one of our finest soldiers.'
                    DC.B    $0D,$0A
                    DC.B    'He single handedly killed 100 men in world war 3'
                    DC.B    $0D,$0A
                    DC.B    'He was the only soldier holding the line, all other were KIA'
                    DC.B    $0D,$0A
                    DC.B    'We are also sending George, one of our top scientists to analyse the planet'
                    DC.B    $0D,$0A
                    DC.B    'Ensuring the safety of George and his research is the top priority'
                    DC.B    $0D,$0A
                    DC.B    'We are sending you, Morgan and Privates Kelly, Sweeney and Roche'
                    DC.B    $0D,$0A
                    DC.B    'There is a power source we detected on this planet that we need'
                    DC.B    $0D,$0A
                    DC.B    'If this is a device we could advance our technology greatly'
                    DC.B    $0D,$0A
                    DC.B    'Even if not this could power a whole continent easily'
                    DC.B    $0D,$0A
                    DC.B    'You can see why this is important to us now Sheppard'
                    DC.B    $0D,$0A
                    DC.B    'We also believe that this mission will improve you all greatly'
                    DC.B    $0D,$0A
                    DC.B    'Remember the scientist is priority here.'
                    DC.B    $0D,$0A
                    DC.B    'Soldiers, do me proud'
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A,0

MISSION1_MESSAGE1:  DC.B    '==================================================='
                    DC.B    $0D,$0A
                    DC.B    'MISSION 1: The Source'
                    DC.B    $0D,$0A
                    DC.B    '==================================================='
                    DC.B    $0D,$0A                        
                    DC.B    'Captain Morgan: Ok men you know the drill, two in front, two in back and two mid'
                    DC.B    $0D,$0A
                    DC.B    'I will take the front with Kelly'
                    DC.B    $0D,$0A
                    DC.B    'Sheppard you and George take the middle'
                    DC.B    $0D,$0A
                    DC.B    'Roche and Sweeney will take the back'
                    DC.B    $0d,$0A
                    DC.B    'The squad you are in begins to move north under command of Morgan'
                    DC.B    $0D,$0A
                    DC.B    'In the distance you see large open area with a giant crater like hole in the middle'
                    DC.B    $0D,$0A
                    DC.B    'Morgan tells the squad to move towards the crater. Do you follow?'
                    DC.B    $0D,$0A
                    DC.B    '(1) Yes I follow, they are my orders after all'
                    DC.B    $0D,$0A
                    DC.B    '(2) No I do not, I hate this mission I am leaving'
                    DC.B    $0D,$0A
                    DC.B    '(3) Kill Yourself (if the pressure is too much)'
                    DC.B    $0D,$0A
                    DC.B    '(4) Run ahead in excitment to see what is in the crater'
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A
                    DC.B    $0D,$0A,0
    
NO_MORGAN:              DC.B    'Your squad moves towards this crater to see if there is anything valuable inside it'
                        DC.B    $0D,$0A
                        DC.B    'As you get closer to the crater you notice smoke is coming from the crater'
                        DC.B    $0D,$0A
                        DC.B    'You reach the edge of the crater with your squad'
                        DC.B    $0D,$0A
                        DC.B    'You see a hourglass shaped object the smoke is coming from'
                        DC.B    $0D,$0A
                        DC.B    'George tells the squad that this is definitely the power source from his digital multimeter'
                        DC.B    $0D,$0A
                        DC.B    'You see there are rocks down here also, roughly 1 metre high scattered throughout this crater'
                        DC.B    $0D,$0A
                        DC.B    'The squad carefully manoeuvres into the crater whilst maintaining formation' 
                        DC.B    $0D,$0A
                        DC.B    'As you reach this object you feel stronger somehow and the multimeter is somehow glowing purple' 
                        DC.B    $0D,$0A
                        DC.B    'George tells the squad that we must bring this back to HQ for further analysation'
                        DC.B    $0D,$0A
                        DC.B    'Roche and Sweeney in the lift this object together and begin to carry it towards the edge of the crater'
                        DC.B    $0D,$0A
                        DC.B    'Your squad returns safely to the HQ with the power source',$0D,$0A
                        DC.B    'You gain a promotion to Lieutenant Sheppard and are given your first mission as a leader',$0D,$0A
                        DC.B    'because of how well you guided the squad after Morgan died',$0D,$0A,0
                                               

ANSWER1_MISSION1P1:
        LEA MISSION1_MESSAGE2_1,A1
        BSR DISPLAY
        RTS

ANSWER1_MISSION1P2:
        LEA MISSION1_MESSAGE2_2,A1
        BSR DISPLAY
        RTS
        
ANSWER1_MISSION1P3:
        LEA MISSION1_MESSAGE2_3,A1
        BSR DISPLAY
        RTS

ANSWER1_MISSION1P4:
        LEA MISSION1_MESSAGE2_2,A1
        BSR DISPLAY
        RTS
        
MISSION1_MESSAGE2_1:    DC.B    'Your squad moves towards this crater to see if there is anything valuable inside it'
                        DC.B    $0D,$0A
                        DC.B    'As you get closer to the crater you notice smoke is coming from the crater'
                        DC.B    $0D,$0A
                        DC.B    'You reach the edge of the crater with your squad'
                        DC.B    $0D,$0A
                        DC.B    'You see a hourglass shaped object the smoke is coming from'
                        DC.B    $0D,$0A
                        DC.B    'George tells the squad that this is definitely the power source from his digital multimeter'
                        DC.B    $0D,$0A
                        DC.B    'You see there are rocks down here also, roughly 1 metre high scattered throughout this crater'
                        DC.B    $0D,$0A
                        DC.B    'The squad carefully manoeuvres into the crater whilst maintaining formation' 
                        DC.B    $0D,$0A
                        DC.B    'As you reach this object you feel stronger somehow and the multimeter is somehow glowing purple' 
                        DC.B    $0D,$0A
                        DC.B    'George tells the squad that we must bring this back to HQ for further analysation'
                        DC.B    $0D,$0A
                        DC.B    'Roche and Sweeney in the lift this object together and begin to carry it towards the edge of the crater'
                        DC.B    $0D,$0A
                        DC.B    'Your squad returns safely to the HQ with the power source',$0D,$0A
                        DC.B    'You gain a promotion to Sargent Sheppard and are given your first mission as a leader',$0D,$0A,0
                        
                        
MISSION1_MESSAGE2_2:    DC.B    'As you attempt to leave the formation you are ambushed by a mysterious creature'
                        DC.B    $0D,$0A
                        DC.B    'You are knocked to the ground, stunned by the power and size of this creature'
                        DC.B    $0D,$0A
                        DC.B    'Morgan shoots the gun out of the hands of this creature saving your life.'
                        DC.B    $0D,$0A
                        DC.B    'The creature turns to Morgan, Morgan orders the crew to fire on the creature'
                        DC.B    $0D,$0A
                        DC.B    'The squad panic and fire, missing this creature'
                        DC.B    $0D,$0A
                        DC.B    'The creature rulls out his massive purple glowing blade and slices Morgan in half like butter'
                        DC.B    $0D,$0A
                        DC.B    'You stand up now seeing the horrible thing this creature has done.'
                        DC.B    $0D,$0A
                        DC.B    'Your squad is panicing, what do you do?'
                        DC.B    $0D,$0A
                        DC.B    '(1) Attempt to fight the creature to save your comerades'
                        DC.B    $0D,$0A
                        DC.B    '(2) Run leaving all the others behind'
                        DC.B    $0D,$0A
                        DC.B    '(3) Kill Yourself (is the pressure to much now)'
                        DC.B    $0D,$0A
                        DC.B    '(4) Attempt to rally the squad and raise morale despite this horrible event',$0D,$0A

    BSR     TAKE_A_NUMBER
    MOVE.B  #1,D2
    CMP     D2,D1
    BEQ     ANSWER_BRAVE
    MOVE.B  #2,D2
    CMP     D2,D1
    BEQ     ANSWER_ABANDON

    MOVE.B  #3,D2
    CMP     D2,D1
    BEQ     ANSWER_DEATH

    MOVE.B  #4,D2
    CMP     D2,D1
    BEQ     ANSWER_TEAM
                       DC.B    $0D,$0A,0
                        
   
ANSWER_BRAVE:
    LEA BRAVE_1,A1
    BSR DISPLAY
    RTS

ANSWER_ABANDON:
    LEA ABANDON_1,A1
    BSR DISPLAY
    RTS

ANSWER_DEATH:
    LEA DEATH_2,A1
    BSR DISPLAY
    RTS

ANSWER_TEAM:
    LEA TEAM_1,A1
    BSR DISPLAY
    RTS

BRAVE_1:    DC.B    'You shoot at this creature and do minimal damage',$0D,$0A
            DC.B    'Yet you see that this creature is in fact damaged.',$0D,$0A
            DC.B    'Suddenly you notice an import looking blue circle on this creature',$0D,$0A
            DC.B    'As a last resort you attack this circle with your dagger',$0D.$0A
            DC.B    'The creature falls to the ground, clearly kiiled by you',$0D,$0A
            DC.B    'Your team praises you for saving their lives',$0D,$0A
            DC.B    'You have now become the de-facto leader of this group',$0D,$0A
            DC.B    'The team ask you what to do and you reply to them:',$0D,$0A
            DC.B    '(1) We continue to our objective',$0D,$0A
            DC.B    '(2) We turn back and forget the mission to save our lives',$0D,$0A
            DC.B    '(3) We kill ourselves so we do not go back in shame',$0D,$0A
            DC.B    '(4) I do not know what to do',$0D,$0A
            DC.B    $0D,$0A
            DC.B    $0D,$0A
            DC.B    $0D,$0A
            DC.B    $0D,$0A
            DC.B    $0D,$0A,0
    BSR     TAKE_A_NUMBER
    MOVE.B  #1,D2
    CMP     D2,D1
    BEQ     OBJECTIVE_1
    MOVE.B  #2,D2
    CMP     D2,D1
    BEQ     RETREAT_1

    MOVE.B  #3,D2
    CMP     D2,D1
    BEQ     DEATH_2

    MOVE.B  #4,D2
    CMP     D2,D1
    BEQ     UNSURE_1


OBJECTIVE_1:    

    BSR NO_MORGAN

RETREAT_1:  DC.B    'Your squad retreats carefully back to HQ without their glorious leader',$0D,$0A
            DC.B    'With two members watching the back and two watching the front the',$0D,$0A
            DC.B    'enemies decide not to attack your group as they are well positioned',$0D,$0A
            DC.B    'After 5 minutes of frantically watching all sides you return to HQ',$0D,$0A
            DC.B    'You tell your Commander called Commander Wilson and you relay what',$0D,$0A
            DC.B    'What happened out there. The commander decides to leave this new planet',$0D,$0A
            DC.B    'He feels this new race is too powerful for us so evac is the best order',$0D,$0A
            DC.B    'He calls the President of the USA and tells him to prepare for a war that',$0D,$0A
            DC.B    'could happen in space or even in our homeland',$0D,$0A
            DC.B    'We must protect the Earth at all costs, the mission is off we must fall back',$0D,$0A
            DC.B    $0D,$0A
            DC.B    $0D,$0A
            DC.B    $0D,$0A
            DC.B    $0D,$0A
            DC.B    $0D,$0A,0
    BSR EXIT


DEATH_2:    DC.B    'You all point your guns towards your own heads and you count down from 10',$0D,$0A
            DC.B    'Everyone fires simultaneously and all die but George as he never had a gun',$0D,$0A
            DC.B    'George picks up the gun from your dead body but as he does another creature appears',$0D,$0A
            DC.B    'and decapitates George and kicks his head away in disrespect',$0D,$0A
            DC.B    'That was not the nicest way to die but its over now for you so you can rest, forever',$0D,$0A,0
    BSR EXIT
            

UNSURE_1:   DC.B    'Despite your uncertainty Sweeney says he has a plan',$0D,$0A
            DC.B    'You all huddle together to discuss this amazing plan he has',$0D,$0A
            DC.B    'Sadly this means nobody is watching your back',$0D,$0A
            DC.B    'A creature sneaks up on the group with a sword 20 foot tall',$0D,$0A
            DC.B    'Which he can extend and contract at will and at the last second',$0D,$0A
            DC.B    'He swings his sword and as you turn you see this blade slice through your stomach',$0D,$0A
            DC.B    'You are left on the floor struggling to live and you look up to see what happened',$0D,$0A
            DC.B    'You see that the entire squad was hit in a way similar to you',$0D,$0A
            DC.B    'The creature leaves you all and you all slowly bleed out despite your',$0D,$0A
            DC.B    'best efforts as a squad to crawl home',$0D,$0A,0
    BSR EXIT       
            
                       
            

ABANDON_1:  DC.B    'As you run away you hear the anguishing cries of your comerades',$0A,$0D
            DC.B    'Despite this you continue running to HQ',$0A,$0D
            DC.B    'Seconds before you arrive you hear this laser-like sound',$0A,$0D
            DC.B    'You look down to see that your left leg from the knee down has been amputated',$0A,$0D
            DC.B    'You see this creature approach you and you try to fight it',$0A,$0D
            DC.B    'However due to your injuries the creature easily disarms you',$0A,$0D
            DC.B    'They the drag you away to where you believe will be their HQ for "questioning"',$0A,$0D,0
    BSR EXIT         
           
DEATH_1:    DC.B    'At this point you know this creature is a lot stronger than you',$0A,$0D
            DC.B    'You believe that it could wipe the human race on its own',$0A,$0D
            DC.B    'You pull out your trusty pistol and point it against your skull',$0A,$0D
            DC.B    'You fire the last bullet you and your pistol will ever fire',$0A,$0D,0
    BSR EXIT

TEAM_1:     DC.B    'Suprisingly the team seem to calm down and focus under your command ',$0A,$0D
            DC.B    '(Lucky for you otherwise you could have been in big trouble)',$0A,$0D
            DC.B    'The squad looks to you for orders. They know just by your face to fire',$0A,$0D
            DC.B    'This creature is visibly taking a lot of damage and tries to run',$0A,$0D
            DC.B    'You turn and with incredible accuracy you shoot this enemy and it drops to the floor',$0A,$0D
            DC.B    'It seems clear that your headshot are more accurate than in training',$0A,$0D
    BSR PAUSE
    BSR NO_MORGAN
                       
MISSION1_MESSAGE2_3:    DC.B    'You point the gun to your head and end it all with one',$0A,$0D
                        DC.B    'pull of the trigger depsite your squad trying to save you.',$0A,$0D
                        DC.B    $0D,$0A,0
        BSR EXIT



            

    
* Put variables and constants here

    END    START        ; last line of source






*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
