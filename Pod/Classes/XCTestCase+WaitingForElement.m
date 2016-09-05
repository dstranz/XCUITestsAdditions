//
//  XCTestCase+WaitingForElement.m
//  Pods
//
//  Created by Dominique Stranz on 15/12/15.
//
//

#import "XCTestCase+WaitingForElement.h"

@implementation XCTestCase (Additions)

- (XCUIElement *)waitForElement:(XCUIElement *)element {
    return [self waitForElement:element withTimeout:15];
}

- (XCUIElement *)waitForElement:(XCUIElement *)element withTimeout:(NSTimeInterval)interval {
    return [self WaitingForElement:element property:@"exists" withTimeout:interval];
}

- (XCUIElement *)waitForElementHittable:(XCUIElement *)element {
    return [self waitForElementHittable:element withTimeout:15];
}

- (XCUIElement *)waitForElementHittable:(XCUIElement *)element withTimeout:(NSTimeInterval)interval {
    return [self WaitingForElement:element property:@"hittable" withTimeout:interval];
}

- (XCUIElement *)waitForElement:(XCUIElement *)element property:(NSString *)property withTimeout:(NSTimeInterval)interval {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K == 1", property];
    
    [self expectationForPredicate:predicate evaluatedWithObject:element handler:nil];
    [self waitForExpectationsWithTimeout:interval handler:nil];
    
    return element;
}

@end
