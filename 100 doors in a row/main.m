//
//  main.m
//  100 doors in a row
//
//  Created by Mark Dumes on 5/6/14.
//  Copyright (c) 2014 CollegeBlink. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // Changable array to add door position into
        NSMutableArray *openClose=[[NSMutableArray alloc]init];
        //integer to control for loop
        int y;
        int n;
        int totaldivisor;
        int numberdoors;
        NSString *open = @"Open Door";
        NSString *close = @"Close Door";
        //loop to add initial state of doors
            for (y=0; y<=99; y++) {
                
                [openClose addObject:close];
                //NSLog(@"%@",openClose);

                
            }
        //loop to open and close doors
        for (y=1; y<=100; y++) {
            totaldivisor = y;
            numberdoors = (100/totaldivisor)-1;
            //NSLog(@"%i",numberdoors);
            int StartDoor=totaldivisor-1;
            //nested for loop
            for (n=0; n<=numberdoors; n++) {
                //NSLog(@"%i",StartDoor);
                NSString* currentdoorstate = [[NSString alloc] initWithFormat:@"%@",openClose[StartDoor]];
                
                if ([currentdoorstate isEqualToString:@"Open Door"] ) {
                    [openClose replaceObjectAtIndex:StartDoor withObject:close];
                }
                else{
                    [openClose replaceObjectAtIndex:StartDoor withObject:open];
                }
                StartDoor =(StartDoor + y);
                            }
        }
        
        
        
        NSLog(@"%@",openClose);
        
    }
    return 0;
}

