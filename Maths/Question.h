//
//  Question.h
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-07.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSString *question;

@property (nonatomic, strong)NSDate *startTime;
@property (nonatomic, strong)NSDate *endTime;

@property (nonatomic) int rightValue;
@property (nonatomic) int leftValue;

- (void) generateQuestion;

- (NSInteger)answer;

- (NSTimeInterval) answerTime;

@end
