// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDADSESSIONCONTEXT_H
#define GADOMIDADSESSIONCONTEXT_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADOMIDPartner;

@interface GADOMIDAdSessionContext : NSObject

@property (readonly, nonatomic) NSUInteger type; // ivar: _type
@property (readonly, nonatomic) UIView *webView; // ivar: _webView
@property (readonly, nonatomic) NSArray *resources; // ivar: _resources
@property (readonly, nonatomic) NSString *script; // ivar: _script
@property (readonly, nonatomic) GADOMIDPartner *partner; // ivar: _partner
@property (readonly, nonatomic) NSString *identifier; // ivar: _identifier


-(id)initWithPartner:(id)arg0 webView:(id)arg1 customReferenceIdentifier:(id)arg2 error:(*id)arg3 ;
-(id)initWithPartner:(id)arg0 script:(id)arg1 resources:(id)arg2 customReferenceIdentifier:(id)arg3 error:(*id)arg4 ;
-(id)toJSON;


@end


#endif