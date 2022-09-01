// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MRCOMMAND_H
#define MRCOMMAND_H


#import <Foundation/Foundation.h>

@protocol MRCommandDelegate;

@interface MRCommand : NSObject

@property (weak, nonatomic) NSObject<MRCommandDelegate> *delegate; // ivar: _delegate


-(BOOL)requiresUserInteractionForPlacementType:(NSUInteger)arg0 ;
-(BOOL)executableWhileBlockingRequests;
-(BOOL)executeWithParams:(id)arg0 ;
-(CGFloat)floatFromParameters:(id)arg0 forKey:(id)arg1 ;
-(CGFloat)floatFromParameters:(id)arg0 forKey:(id)arg1 withDefault:(CGFloat)arg2 ;
-(BOOL)boolFromParameters:(id)arg0 forKey:(id)arg1 ;
-(int)intFromParameters:(id)arg0 forKey:(id)arg1 ;
-(id)stringFromParameters:(id)arg0 forKey:(id)arg1 ;
-(id)urlFromParameters:(id)arg0 forKey:(id)arg1 ;
+(void)initialize;
+(id)sharedCommandClassMap;
+(void)registerCommand:(Class)arg0 ;
+(id)commandType;
+(Class)commandClassForString:(id)arg0 ;
+(id)commandForString:(id)arg0 ;


@end


#endif