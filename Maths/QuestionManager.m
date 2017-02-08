//
//  QuestionManager.m
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)initArray
{
    self = [super init];
    
    if (self) {
        
        _questions = [NSMutableArray array];
        
        
    }
    return self;
}

- (void) addQuestion:(Question *) question
{
    
    [_questions addObject:question];
    
}


- (NSString *) timeOutput
{
    NSTimeInterval totalTime = 0;
    NSTimeInterval averageTime = 0;
    float counter = 1;
    
    for (Question *question in _questions){
        
        totalTime += [question answerTime];
        averageTime = totalTime/counter;
        
        counter++;
    }
    
    NSString *printOut = [NSString stringWithFormat:@"Total time: %0.fs, average time: %0.fs", totalTime, averageTime];
    
    
    return printOut;
}


@end
