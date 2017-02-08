//
//  UserInput.m
//  Maths
//
//  Created by Sofia Knezevic on 2017-02-07.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

- (NSString *)getString
{
    
    char charArray[255];
    //printf("What is the answer?\n");
    fgets(charArray, 255, stdin);
    
    return [[NSString stringWithCString:charArray
                               encoding:NSUTF8StringEncoding]
        stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
}

@end
