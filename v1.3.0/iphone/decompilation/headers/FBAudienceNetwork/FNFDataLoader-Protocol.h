// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFDataLoader


-(void)setDelegate:(id)arg0 ;
-(void)fetchFirstRequestForSeconds:(unsigned int)arg0 initializationAtomSize:(NSUInteger)arg1 track:(NSInteger)arg2 ;
-(void)seekForwardToOffset:(NSUInteger)arg0 forTrack:(NSInteger)arg1 ;
-(void)fetchToOffset:(NSUInteger)arg0 forTrack:(NSInteger)arg1 ;
-(BOOL)isFullyDownloaded:(NSInteger)arg0 ;
-(void)resetWithNewDataBlockDistributor:(id)arg0 ;
-(void)cancelRequests;
-(NSUInteger)currentReceiveOffsetForTrack:(NSInteger)arg0 ;
-(NSUInteger)currentRequestOffsetForTrack:(NSInteger)arg0 ;
-(BOOL)fetchInProgressForTrack:(NSInteger)arg0 ;
-(id)resourceLoader;

@end

