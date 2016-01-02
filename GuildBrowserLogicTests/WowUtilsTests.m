//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Jonathan Lu on 1/1/16.
//  Copyright © 2016 Charlie Fulton. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "WowUtils.h"

@interface WowUtilsTests : XCTestCase

@end

@implementation WowUtilsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCharacterClassNameLookup {
    XCTAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]]);
    
    XCTAssertEqualObjects(@"Warrior", [WoWUtils classFromCharacterType:1]);
    XCTAssertEqualObjects(@"Paladin", [WoWUtils classFromCharacterType:2]);
    XCTAssertEqualObjects(@"Hunter", [WoWUtils classFromCharacterType:3]);
    XCTAssertEqualObjects(@"Rogue", [WoWUtils classFromCharacterType:4]);
    XCTAssertEqualObjects(@"Priest", [WoWUtils classFromCharacterType:5]);
    XCTAssertEqualObjects(@"Death Knight", [WoWUtils classFromCharacterType:6]);
    XCTAssertEqualObjects(@"Shaman", [WoWUtils classFromCharacterType:7]);
    XCTAssertEqualObjects(@"Mage", [WoWUtils classFromCharacterType:8]);
    XCTAssertEqualObjects(@"Warlock", [WoWUtils classFromCharacterType:9]);
    XCTAssertEqualObjects(@"Monk", [WoWUtils classFromCharacterType:10]);
    XCTAssertEqualObjects(@"Druid", [WoWUtils classFromCharacterType:11]);
}

- (void)testRaceTypeLookup {
    XCTAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]]);
    
    XCTAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1]);
    XCTAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2]);
    XCTAssertEqualObjects(@"Dwarf", [WoWUtils raceFromRaceType:3]);
    XCTAssertEqualObjects(@"Night Elf", [WoWUtils raceFromRaceType:4]);
    XCTAssertEqualObjects(@"Undead", [WoWUtils raceFromRaceType:5]);
    XCTAssertEqualObjects(@"Tauren", [WoWUtils raceFromRaceType:6]);
    XCTAssertEqualObjects(@"Gnome", [WoWUtils raceFromRaceType:7]);
    XCTAssertEqualObjects(@"Troll", [WoWUtils raceFromRaceType:8]);
    XCTAssertEqualObjects(@"Goblin", [WoWUtils raceFromRaceType:9]);
    XCTAssertEqualObjects(@"Blood Elf", [WoWUtils raceFromRaceType:10]);
    XCTAssertEqualObjects(@"Draenei", [WoWUtils raceFromRaceType:11]);
    XCTAssertEqualObjects(@"Worgen", [WoWUtils raceFromRaceType:21]);
}

- (void)testQualityLookup {
    XCTAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]]);
    
    XCTAssertEqualObjects(@"Grey", [WoWUtils qualityFromQualityType:1]);
    XCTAssertEqualObjects(@"White", [WoWUtils qualityFromQualityType:2]);
    XCTAssertEqualObjects(@"Green", [WoWUtils qualityFromQualityType:3]);
    XCTAssertEqualObjects(@"Blue", [WoWUtils qualityFromQualityType:4]);
    XCTAssertEqualObjects(@"Purple", [WoWUtils qualityFromQualityType:5]);
    XCTAssertEqualObjects(@"Orange", [WoWUtils qualityFromQualityType:6]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
