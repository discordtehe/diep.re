// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSPROCESSREPORTOPERATION_H
#define CLSPROCESSREPORTOPERATION_H


#import <Foundation/Foundation.h>

@class CLSSymbolResolver;
@class CLSInternalReport;

@interface CLSProcessReportOperation : NSOperation

@property (readonly, nonatomic) CLSSymbolResolver *symbolResolver; // ivar: _symbolResolver
@property (readonly, nonatomic) CLSInternalReport *report; // ivar: _report


-(id)initWithReport:(id)arg0 resolver:(id)arg1 ;
-(id)binaryImagePath;
-(id)threadArrayFromFile:(id)arg0 ;
-(BOOL)symbolicateFile:(id)arg0 withResolver:(id)arg1 ;
-(void)main;


@end


#endif