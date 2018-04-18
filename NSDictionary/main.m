//
//  main.m
//  NSDictionary
//
//  Created by Роман on 15.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       // Create NSDictionary using literal declaration
        
        NSDictionary* dictionary1 = @{@"person1":@"Ivan", @"person2":@"Fedor"};
        NSLog(@"%@",dictionary1);
        // Make it mutable and add several new entries
        NSMutableDictionary* mutableDictionary1 = [@{@"person1":@"Ivan", @"person2":@"Fedor"} mutableCopy];
        [mutableDictionary1 setObject:@"Alex" forKey:@"person3"];
        NSLog(@"%@",mutableDictionary1);
       
        //Sort it in an ascending and descending order
        NSArray* sortedKeysInArray =[mutableDictionary1 keysSortedByValueUsingSelector:@selector(compare:)];
        NSLog(@"%@",sortedKeysInArray);
        //Check whether required value is contained in the dictionary.
        if ([mutableDictionary1 objectForKey:@"person5"]){
            NSLog(@"Key exist");
        }else{
            NSLog(@"Key is not exist");
        }
}
}
