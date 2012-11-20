//
//  MainViewController.m
//  Reader
//
//  Created by Marius Constantinescu on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "KMXMLParser.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize parseResults = _parseResults;


@synthesize feeds;
Preferences *prefs;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	//NSLog(@"nu intra in init");
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
	prefs = [[Preferences alloc] init];
	[prefs initPreferences];
		
		
		
    }
    return self;
}

- (NSMutableArray *) get:(int) number FeedsFromURL:(NSString *) url
{
	
	KMXMLParser *parser = [[KMXMLParser alloc]  initWithURL:url delegate:nil];
	_parseResults = [parser posts];
	NSMutableArray * auxMutable = [[NSMutableArray alloc] init];
	for (int i = 0; i < number; i ++)
	{
		[auxMutable addObject:[_parseResults objectAtIndex:i]];
	}
	
	return auxMutable;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	[self initWithNibName:@"" bundle:nil];
	//Sets the navigation bar title
	self.title = @"News";
	[self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
	NSLog(@"ajung aici");
	
	feeds = [[NSMutableArray alloc] init];
	[feeds addObjectsFromArray:[self get:[prefs getGeneralNumber] FeedsFromURL:@"http://www.gandul.info/rss-stiri-prima-pagina.xml"] ];
	[feeds addObjectsFromArray:[self get:[prefs getPoliticaNumber] FeedsFromURL:@"http://www.mediafax.ro/rss/politic/"] ];
	[feeds addObjectsFromArray:[self get:[prefs getInternationalNumber] FeedsFromURL:@"http://www.mediafax.ro/rss/externe/"] ];
	[feeds addObjectsFromArray:[self get:[prefs getFinanciarNumber] FeedsFromURL:@"http://www.zf.ro/rss/zf-24/"] ];
	[feeds addObjectsFromArray:[self get:[prefs getGadgetsNumber] FeedsFromURL:@"http://feeds2.feedburner.com/Go4itro-Stiri/"] ];
	[feeds addObjectsFromArray:[self get:[prefs getJocuriNumber] FeedsFromURL:@"http://feeds.feedburner.com/go4games/"] ];
	[feeds addObjectsFromArray:[self get:[prefs getShowbizNumber] FeedsFromURL:@"http://www.showbiz.ro/feed-categorie/monden/"] ];
	[feeds addObjectsFromArray:[self get:[prefs getBusinessNumber] FeedsFromURL:@"http://www.businessmagazin.ro/rss-feed.xml"] ];
	[feeds addObjectsFromArray:[self get:[prefs getLifestyleNumber] FeedsFromURL:@"http://www.apropo.ro/feed-categorie/life-style/"] ];
	[feeds addObjectsFromArray:[self get:[prefs getAutoNumber] FeedsFromURL:@"http://www.promotor.ro/rss"] ];
	[feeds addObjectsFromArray:[self get:[prefs getSportNumber] FeedsFromURL:@"http://www.prosport.ro/rss.xml"] ];
	
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView

{
	
	// Return the number of sections.
	
	return 1;
	
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
	
	// Return the number of rows in the section.
	
	return self.feeds.count;
	
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
	
	static NSString *CellIdentifier = @"Cell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
	//Check if cell is nil. If it is create a new instance of it
	
	if (cell == nil) {
		
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:CellIdentifier];
		
	}
	
	// Configure the cell...
	
	cell.textLabel.text = [[self.feeds objectAtIndex:indexPath.row] objectForKey:@"title"];
	
	cell.detailTextLabel.text = [[self.feeds objectAtIndex:indexPath.row]  objectForKey:@"summary"];
	
    
	
	return cell;
	
}






- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
