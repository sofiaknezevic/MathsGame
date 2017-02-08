//
//  Question.m
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-07.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "Question.h"
#import "UserInput.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        
        _rightValue = arc4random_uniform(91)+10;
        _leftValue = arc4random_uniform(91)+10;
        
        _startTime = [NSDate date];
        
        
       
    }
    
    return self;
}

- (NSInteger)answer
{
    
    _endTime = [NSDate date];
    
    return _answer;
}

- (NSTimeInterval)answerTime
{
    NSTimeInterval timeAnswer = ((int)[_endTime timeIntervalSinceDate:_startTime]);
    
    
    return timeAnswer;
}

- (void) generateQuestion
{
    
}



@end
