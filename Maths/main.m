//
//  main.m
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-07.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        //testing UserInput.h && UserInput.m
//        UserInput *userInput = [[UserInput alloc] init];
//
//        NSLog(@"%@", userInput.getString);
        
        //testing AdditionQuestion [question + answer]
//        
//        AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] initWithQuestion];
//        
//        NSLog(@"%@", additionQuestion.question);
//        NSLog(@"%ld", (long)additionQuestion.answer);
        
        
        
        
        BOOL gameOn = TRUE;
        
        ScoreKeeper *yourScore = [[ScoreKeeper alloc] init];
        
        NSInteger userAnswer;
        
        while (gameOn) {
            
            UserInput *userInput = [[UserInput alloc] init];

            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] initWithQuestion];
            
            
            NSLog(@"%@", additionQuestion.question);
            
            NSString *willYouGame = [userInput getString];
            
            if([willYouGame isEqualToString:@"quit"]){
                
                gameOn = FALSE;
                
                break;
                
             }else{
                
                userAnswer = [willYouGame intValue];
                
            }
            
            
            NSLog(@"%li", (long)userAnswer);
            
            if((long)additionQuestion.answer == userAnswer){
     
                NSLog(@"Right!");
                
                yourScore.right++;
                
                
            }else{
                
                NSLog(@"WRONG!!!");
                
                yourScore.wrong++;
                
            }
            
            NSLog(@"%@", [yourScore scoreOutput]);
            

        }
        
        
        
    }
    return 0;
}

