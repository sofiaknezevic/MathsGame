//
//  AdditionQuestion.h
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-07.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSInteger answer;
@property NSString *question;


- (instancetype) initWithQuestion;

@end
