//
//  XCTestCase+WaitingForElement.m
//  Pods
//
//  Created by Dominique Stranz on 15/12/15.
//
//

#import "XCTestCase+WaitingForElement.h"

static NSString *const existsProperty = @"exists";
static NSString *const hittableProperty = @"hittable";


@implementation XCTestCase (Additions)

- (XCUIElement *)waitForElement:(XCUIElement *)element {
    return [self waitForElement:element withTimeout:15];
}

- (XCUIElement *)waitForElement:(XCUIElement *)element withTimeout:(NSTimeInterval)interval {
    return [self waitForElement:element property:existsProperty withTimeout:interval];
}

- (XCUIElement *)waitForElementHittable:(XCUIElement *)element {
    return [self waitForElementHittable:element withTimeout:15];
}

- (XCUIElement *)waitForElementHittable:(XCUIElement *)element withTimeout:(NSTimeInterval)interval {
    return [self waitForElement:element property:hittableProperty withTimeout:interval];
}

- (XCUIElement *)waitForElement:(XCUIElement *)element property:(NSString *)property withTimeout:(NSTimeInterval)interval {
    //Need this to avoid "Failure getting snapshot error." See https://forums.developer.apple.com/thread/6437
    sleep(1);
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K == 1", property];
    
    [self expectationForPredicate:predicate evaluatedWithObject:element handler:nil];
    [self waitForExpectationsWithTimeout:interval handler:nil];
    
    return element;
}

@end
