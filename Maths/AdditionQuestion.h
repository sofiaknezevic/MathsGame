//
//  AdditionQuestion.h
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-07.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic) NSInteger answer;
@property NSString *question;

@property NSDate *startTime;
@property NSDate *endTime;


- (instancetype) initWithQuestionAndWithStartTime:(NSDate *)startTime;

- (NSInteger) answer;

- (NSTimeInterval) answerTime;

@end
