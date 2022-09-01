// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSADEMANDSOURCE_H
#define SSADEMANDSOURCE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ISNProductDelegate;

@interface SSADemandSource : NSObject

@property (retain, nonatomic) NSString *name; // ivar: _name
@property (retain, nonatomic) NSDictionary *extraParams; // ivar: _extraParams
@property (weak, nonatomic) NSObject<ISNProductDelegate> *delegate; // ivar: _delegate
@property (nonatomic, getter=isInitialized) BOOL initialized; // ivar: _initialized
@property (nonatomic) NSInteger mediationState; // ivar: _mediationState
@property (getter=isAdAvailable) BOOL adAvailable; // ivar: _adAvailable
@property (nonatomic) NSInteger initState; // ivar: _initState


-(id)initWithName:(id)arg0 extraParams:(id)arg1 delegate:(id)arg2 ;


@end


#endif