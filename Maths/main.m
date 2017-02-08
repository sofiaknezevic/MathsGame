//
//  main.m
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-07.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "DivisionQuestion.h"
#import "MultiplicationQuestion.h"
#import "SubtractionQuestion.h"
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = TRUE;
        
        //UserInput *userInput = [[UserInput alloc] init];
        
        ScoreKeeper *yourScore = [[ScoreKeeper alloc] init];
       
        QuestionFactory *factoryQuestion = [[QuestionFactory alloc] init];
        
        QuestionManager *questionManager = [[QuestionManager alloc] initArray];
        
        Question *testQuestion = [[Question alloc] init];
        
        NSInteger userAnswer;
        
        printf("Math Game is starting... \nType 'quit' if you would like to quit!\n\n\n");
        
        while (gameOn) {
            
            testQuestion = [factoryQuestion generateRandomQuestion];
            
            NSLog(@"%@", testQuestion.question);
            
            NSString *willYouGame = [UserInput getString];
            
            if([willYouGame isEqualToString:@"quit"]){
                
                gameOn = FALSE;
                
                break;
                
             }else{
                
                userAnswer = [willYouGame intValue];
                
            }
            
            if(testQuestion.answer == userAnswer){
     
                NSLog(@"Right!");
                
                yourScore.right++;

                
            }else{
                
                NSLog(@"WRONG!!!");
                
                yourScore.wrong++;
                
            }
            
            
            NSLog(@"%@",[questionManager timeOutput]);
            NSLog(@"%@", [yourScore scoreOutput]);
            
            

        }
        
        
    }
    return 0;
}

