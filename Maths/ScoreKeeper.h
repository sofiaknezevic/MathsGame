//
//  ScoreKeeper.h
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-07.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int right;
@property int wrong;

- (NSString *)scoreOutput;

@end
