//
//  QuestionFactory.m
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory


- (instancetype)init
{
    self = [super init];
    if (self) {
        _typeOfQuestion = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}


- (Question *)generateRandomQuestion
{
    
    NSString *className = [_typeOfQuestion objectAtIndex:arc4random_uniform(4)];
    
    Question *questionType = [[NSClassFromString(className)alloc] init];
    
    return questionType;
    
}

@end
