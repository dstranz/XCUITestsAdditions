//
//  XCTestCase+WaitingForElement.m
//  Pods
//
//  Created by Dominique Stranz on 15/12/15.
//
//

#import "XCTestCase+WaitingForElement.h"

@implementation XCTestCase (Additions)

- (void)waitForElement:(XCUIElement *)element {
    [self waitForElement:element withTimeout:15];
}

- (void)waitForElement:(XCUIElement *)element withTimeout:(NSTimeInterval)interval {
    NSPredicate *exists = [NSPredicate predicateWithFormat:@"exists == 1"];
    
    [self expectationForPredicate:exists evaluatedWithObject:element handler:nil];
    [self waitForExpectationsWithTimeout:interval handler:nil];
}


- (void)waitForElementHittable:(XCUIElement *)element {
    [self waitForElementHittable:element withTimeout:15];
}

- (void)waitForElementHittable:(XCUIElement *)element withTimeout:(NSTimeInterval)interval {
    NSPredicate *exists = [NSPredicate predicateWithFormat:@"hittable == 1"];
    
    [self expectationForPredicate:exists evaluatedWithObject:element handler:nil];
    [self waitForExpectationsWithTimeout:interval handler:nil];
}


@end
