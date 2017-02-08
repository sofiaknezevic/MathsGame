//
//  QuestionFactory.h
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property NSArray *typeOfQuestion;

- (Question *)generateRandomQuestion;


@end
