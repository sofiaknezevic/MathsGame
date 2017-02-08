//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion
{
    super.question = [NSString stringWithFormat:@"What is the answer to %i - %i?", super.rightValue, super.leftValue];
    super.answer = super.rightValue - super.leftValue;
    NSLog(@"%@", super.question);
}

@end