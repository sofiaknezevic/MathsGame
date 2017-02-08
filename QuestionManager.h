//
//  QuestionManager.h
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property NSMutableArray *questions;


- (instancetype) initArray;

- (void) addQuestion:(AdditionQuestion *) question;

- (NSString *) timeOutput;

@end
