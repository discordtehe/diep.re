// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFDASHTRACKENTRYCONTAINER_H
#define FNFDASHTRACKENTRYCONTAINER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol FNFDashTrackEntryContaining;

@interface FNFDashTrackEntryContainer : NSObject <FNFDashTrackEntryContaining>

 {
    NSArray *_timelineEntries;
    NSString *_urlTemplate;
    vector<int, std::__1::allocator<int> > _logicalIndexLookup;
    vector<unsigned int, std::__1::allocator<unsigned int> > _logicalTimeLookup;
    int _sequenceCount;
    BOOL _hasRepetition;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithTimelineEntries:(id)arg0 mediaUrlTemplate:(id)arg1 ;
-(int)count;
-(id)firstEntry;
-(id)lastEntry;
-(id)timelineEntryAtIndex:(int)arg0 ;
-(int)sequenceIndexForRelativeTime:(unsigned int)arg0 ;
-(unsigned int)relativeStartTimeForEntryAtIndex:(int)arg0 ;
-(int)_lookupPhysicalIndexForLogicalIndex:(int)arg0 ;


@end


#endif