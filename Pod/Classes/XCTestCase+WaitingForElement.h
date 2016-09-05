//
//  XCTestCase+WaitingForElement.h
//  Pods
//
//  Created by Dominique Stranz on 15/12/15.
//
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>

@interface XCTestCase (Additions)

/*!
 *  Create expectation with predicate exists == 1 for given element with default timeout 15s
 *
 *  @param element for predicate evaluation
 *  @returns return element if exists
 */
- (XCUIElement *)waitForElement:(XCUIElement *)element;

/*!
 *  Create expectation with predicate exists == 1 for given element
 *
 *  @param element for predicate evaluation
 *  @param interval expectation waiting timout
 *  @returns return element if exists
 */
- (XCUIElement *)waitForElement:(XCUIElement *)element withTimeout:(NSTimeInterval)interval;

/*!
 *  Create expectation with predicate hittable == 1 for given element with default timeout 15s
 *  Should be used instead -waitForElement: if we want to interact with element (tap, swipe, etc...)
 *
 *  @param element for predicate evaluation
 *  @returns return element if hittable
 */
- (XCUIElement *)waitForElementHittable:(XCUIElement *)element;

/*!
 *  Create expectation with predicate hittable == 1 for given element
 *  Should be used instead -waitForElement: if we want to interact with element (tap, swipe, etc...)
 *
 *  @param element for predicate evaluation
 *  @param interval expectation waiting timout
 *  @returns return element if hittable
 */
- (XCUIElement *)waitForElementHittable:(XCUIElement *)element withTimeout:(NSTimeInterval)interval;

@end
