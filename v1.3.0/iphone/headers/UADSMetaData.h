// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSMETADATA_H
#define UADSMETADATA_H


#import <Foundation/Foundation.h>

@class USRVJsonStorage;

@interface UADSMetaData : USRVJsonStorage

@property (retain, nonatomic) NSString *category; // ivar: _category


-(id)initWithCategory:(id)arg0 ;
-(BOOL)set:(id)arg0 value:(id)arg1 ;
-(BOOL)setRaw:(id)arg0 value:(id)arg1 ;
-(id)getActualKeyForKey:(id)arg0 ;
-(void)commit;


@end


#endif