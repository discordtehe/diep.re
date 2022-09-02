@implementation TRVersionRequest

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setName:@"Versions"];
            [r19 setRelativeURL:*0x100e7d610];
            [r19 setCanQueue:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)handleResponseObject:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] handleResponseObject:arg2];
    r0 = [r19 responsePayload];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto .l1;

loc_10042aaa0:
    r0 = [r19 responsePayload];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"status"];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 intValue];
    [r0 release];
    if (r20 == 0x2) goto loc_10042ab10;

loc_10042aaf8:
    if (r20 == 0x1) goto loc_10042ab74;

loc_10042ab00:
    if (r20 != 0x0) goto loc_10042ab88;

loc_10042ab04:
    r20 = @"TapResearchSDK is up to date";
    goto loc_10042ab7c;

loc_10042ab7c:
    [r20 retain];
    goto loc_10042ab8c;

loc_10042ab8c:
    if ((*0x100be01b0 & 0x4) != 0x0) {
            [TR_DDLog log:0x1 level:r3 flag:0x4 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Models/Requests/TRVersionRequest.m" function:"-[TRVersionRequest handleResponseObject:]" line:0x3c tag:0x0 format:@"%@"];
    }
    [r20 release];
    [r19 release];
    return;

.l1:
    return;

loc_10042ab88:
    r20 = 0x0;
    goto loc_10042ab8c;

loc_10042ab74:
    r20 = @"There is a new version of the TapResearchSDK available. Please visit www.tapresearch.com for more information.";
    goto loc_10042ab7c;

loc_10042ab10:
    r20 = [*0x100e7d6b8 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r3 = *0x100e7d6f0;
    [r0 setObject:r2 forKey:r3];
    [r21 release];
    goto loc_10042ab8c;
}

@end