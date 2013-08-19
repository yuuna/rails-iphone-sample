//
//  GTSamplClass.m
//  SampleProject
//
//  Created by Yuuna Morisawa on 2013/05/04.
//  Copyright (c) 2013年 Yuuna Kurita. All rights reserved.
//

#import "GTSamplClass.h"

@implementation GTSamplClass

- (void)testSample{
    NSString *baseString = @"Sample String";
    GHTestLog(@"This message is shown in console");
    
    GHAssertNotNil(baseString,nil);
    
    NSString *compareString = @"Sample String";
    GHAssertEqualObjects(baseString,compareString, @"%@ is not equal %@", baseString, compareString);

    NSString *strangeString = @"Not Equal String";
    GHAssertEqualObjects(baseString,strangeString, @"%@ is not equal %@", baseString, strangeString);

    
}


- (void)testMockSample{
    id mock = [OCMockObject mockForClass:NSString.class];
    [[[mock stub] andReturn:@"SAMPLE"] uppercaseString];
    GHAssertEqualStrings(@"SAMPLE", [mock uppercaseString], @"match");
}

@end
