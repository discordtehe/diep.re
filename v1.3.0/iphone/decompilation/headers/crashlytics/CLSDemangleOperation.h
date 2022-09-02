// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSDEMANGLEOPERATION_H
#define CLSDEMANGLEOPERATION_H



@class CLSThreadArrayOperation;

@interface CLSDemangleOperation : CLSThreadArrayOperation



-(id)demangleSymbol:(char *)arg0 ;
-(void)main;
+(id)demangleSymbol:(char *)arg0 ;
+(id)demangleBlockInvokeCppSymbol:(char *)arg0 ;
+(id)demangleCppSymbol:(char *)arg0 ;


@end


#endif