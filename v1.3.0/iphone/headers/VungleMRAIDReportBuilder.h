// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEMRAIDREPORTBUILDER_H
#define VUNGLEMRAIDREPORTBUILDER_H


#import <Foundation/Foundation.h>

@class VungleMRAIDAdReport;
@protocol VungleMRAIDReportBuilderProtocol;

@interface VungleMRAIDReportBuilder : NSObject <VungleMRAIDReportBuilderProtocol>



@property (retain, nonatomic) VungleMRAIDAdReport *report; // ivar: _report
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithReport:(id)arg0 placement:(id)arg1 ;
-(void)aggregateEvent:(id)arg0 ;
-(void)aggregateEvent:(id)arg0 withValue:(id)arg1 ;
-(void)aggregateError:(id)arg0 ;


@end


#endif