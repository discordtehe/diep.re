// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCMODULE_H
#define ADCMODULE_H

@class ADCRenderView;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ADCModule : NSObject

@property (nonatomic) NSUInteger originNumber; // ivar: _originNumber
@property (retain, nonatomic) NSMutableDictionary *info; // ivar: _info
@property (retain, nonatomic) NSString *adSessionID; // ivar: _adSessionID
@property (retain, nonatomic) ADCRenderView *currentRenderView; // ivar: _currentRenderView
@property (nonatomic) BOOL active; // ivar: _active
@property (nonatomic) BOOL disabled; // ivar: _disabled
@property (nonatomic) BOOL adc3InitCalled; // ivar: _adc3InitCalled
@property (retain, nonatomic) NSMutableArray *outbound; // ivar: _outbound
@property (nonatomic) int nextBoundObjectIdentifier; // ivar: _nextBoundObjectIdentifier
@property (retain, nonatomic) NSMutableDictionary *boundObjects; // ivar: _boundObjects
@property (nonatomic) int pumpsSinceLastMessage; // ivar: _pumpsSinceLastMessage
@property (retain, nonatomic) NSDate *dateOfLastMessage; // ivar: _dateOfLastMessage


-(void)logMessage:(id)arg0 ;
-(void)beginMessagePassing:(id)arg0 ;
-(void)pumpMessages:(id)arg0 ;
-(void)queueMessage:(id)arg0 ;
-(void)queueMessages:(id)arg0 ;
-(id)objectForIdentifier:(NSUInteger)arg0 ;
-(int)bindObject:(id)arg0 ;
-(void)unbindObjectForIdentifier:(NSUInteger)arg0 ;


@end


#endif