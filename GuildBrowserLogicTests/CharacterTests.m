//
//  CharacterTests.m
//  CharacterTests
//
//  Created by Jonathan Lu on 1/1/16.
//  Copyright © 2016 Charlie Fulton. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Character.h"
#import "Item.h"

@interface CharacterTests : XCTestCase

@end

@implementation CharacterTests
{
    NSDictionary *_characterDetailJSON;
    Character *_testCharacter;
}

- (void)setUp {
    [super setUp];
    
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSURL *dataServiceURL = [bundle URLForResource:@"character" withExtension:@"json"];
    
    NSData *sampleData = [NSData dataWithContentsOfURL:dataServiceURL];
    NSError *error;
    
    id json = [NSJSONSerialization JSONObjectWithData:sampleData options:kNilOptions error:&error];
    
    XCTAssertNotNil(json, @"Invalid test data");
    
    _characterDetailJSON = json;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    
    _characterDetailJSON = nil;
}

- (void)testCreateCharacterFromDetailJson {
    _testCharacter = [[Character alloc] initWithCharacterDetailData:_characterDetailJSON];
    XCTAssertNotNil(_testCharacter, "Couldn't parse Character from detail JSON");
    
    XCTAssertNotNil([[Character alloc] initWithCharacterDetailData:nil],
                    "Couldn't parse Character from detail JSON");
}

- (void)testCreateCharacterFromDetailJSONProps {
    XCTAssertEqualObjects(_testCharacter.thumbnail, @"borean-tundra/171/40508075-avatar.jpg", @"thumbnail url is wrong");
    XCTAssertEqualObjects(_testCharacter.name, @"Hagrel", @"name is wrong");
    XCTAssertEqualObjects(_testCharacter.battleGroup, @"Emberstorm", @"battlegroup is wrong");
    XCTAssertEqualObjects(_testCharacter.realm, @"Borean Tundra", @"realm is wrong");
    XCTAssertEqualObjects(_testCharacter.achievementPoints, @3130, @"achievement points is wrong");
    XCTAssertEqualObjects(_testCharacter.level,@85, @"level is wrong");
    
    XCTAssertEqualObjects(_testCharacter.classType, @"Warrior", @"class type is wrong");
    XCTAssertEqualObjects(_testCharacter.race, @"Human", @"race is wrong");
    XCTAssertEqualObjects(_testCharacter.gender, @"Male", @"gener is wrong");
    XCTAssertEqualObjects(_testCharacter.averageItemLevel, @379, @"avg item level is wrong");
    XCTAssertEqualObjects(_testCharacter.averageItemLevelEquipped, @355, @"avg item level is wrong");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
