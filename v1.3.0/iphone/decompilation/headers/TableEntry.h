// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TABLEENTRY_H
#define TABLEENTRY_H


#import <Foundation/Foundation.h>

@class CCMenuItem;

@interface TableEntry : NSObject {
    id *tag;
    CCMenuItem *cell;
    BOOL isTableCell;
    BOOL respondsToLoadMethods;
    BOOL respondsToUpdateDistanceRatio;
    BOOL respondsToInput;
}




-(id)init:(id)arg0 tag:(id)arg1 ;
-(void)dealloc;
+(id)getTableEntry:(id)arg0 tag:(id)arg1 ;
+(id)getTableEntry:(id)arg0 ;
+(id)tableEntryWithCell:(id)arg0 tag:(id)arg1 ;
+(id)tableEntryWithCell:(id)arg0 ;


@end


#endif