//
//  AdditionQuestion.m
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-07.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "AdditionQuestion.h"
#import "UserInput.h"

@implementation AdditionQuestion

- (instancetype)initWithQuestionAndWithStartTime: (NSDate *)startTime
{
    self = [super init];
    
    if (self) {
        
        _startTime = startTime;
        
        NSInteger random1 = arc4random_uniform(91)+10;
        NSInteger random2 = arc4random_uniform(91)+10;
        
        _question = [NSString stringWithFormat:@"What is %li + %li?",
                     (long)random1, (long)random2];
        
        _answer = random1+random2;
    }
    
    
    return self;
}

- (NSInteger)answer
{
    _endTime = [NSDate date];
    
    //testing
    //NSLog(@"%@", _endTime);
    
    return _answer;
}

- (NSTimeInterval)answerTime
{
    NSTimeInterval timeAnswer = ((int)[_endTime timeIntervalSinceDate:_startTime]);
    
    
    return timeAnswer;
}




@end
