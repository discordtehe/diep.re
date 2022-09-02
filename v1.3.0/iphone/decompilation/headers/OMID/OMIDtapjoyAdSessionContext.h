// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYADSESSIONCONTEXT_H
#define OMIDTAPJOYADSESSIONCONTEXT_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class OMIDtapjoyPartner;

@interface OMIDtapjoyAdSessionContext : NSObject

@property (readonly, nonatomic) OMIDtapjoyPartner *partner; // ivar: _partner
@property (readonly, nonatomic) NSUInteger type; // ivar: _type
@property (readonly, weak, nonatomic) UIView *webView; // ivar: _webView
@property (readonly, nonatomic) NSArray *resources; // ivar: _resources
@property (readonly, nonatomic) NSString *script; // ivar: _script
@property (readonly, nonatomic) NSString *identifier; // ivar: _identifier


-(id)initWithPartner:(id)arg0 webView:(id)arg1 customReferenceIdentifier:(id)arg2 error:(*id)arg3 ;
-(id)initWithPartner:(id)arg0 script:(id)arg1 resources:(id)arg2 customReferenceIdentifier:(id)arg3 error:(*id)arg4 ;
-(id)toJSON;


@end


#endif