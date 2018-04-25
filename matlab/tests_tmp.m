mo = MarketObject()

% Create three traders
mo = MarketObject()
mo = mo.createUser(struct('verifyKey','a'));
mo = mo.createUser(struct('verifyKey','b'));
mo = mo.createUser(struct('verifyKey','c'));

% Craete trades
mo = mo.createMarket(marketMaker(mo, 1, 1, 0, 1, 1))
% mo = mo.createMarket(marketMaker(mo, 2, 1, 0, 1, 1))
mo = mo.createMarket(marketMaker(mo, 1, 2, 0.1, 0.9, 1))
% mo = mo.createMarket(marketMaker(mo, 2, 2, 0.2, 0.8, 1))
mo = mo.createMarket(marketMaker(mo, 1, 1, 1, 1, 1))
mo.marketBounds

%% 

% Create three traders
mo = MarketObject()
mo = mo.createUser(struct('verifyKey','a'));
mo = mo.createUser(struct('verifyKey','b'));
mo = mo.createUser(struct('verifyKey','c'));


mo = mo.createMarket(marketMaker(mo, 1, 1, 0, 1, 1))
% mo = mo.createMarket(marketMaker(mo, 2, 1, 0, 1, 1))
mo = mo.createMarket(marketMaker(mo, 2, 1, 0, 1, 1))
% mo = mo.createMarket(marketMaker(mo, 2, 2, 0.2, 0.8, 1))
mo.marketBounds

% tradePackage = tradeMaker(mo, traderId, marketRootId, marketBranchId, price, quantity)

% Trader 1 buys 1 at 0.5 in market 1
mo = mo.createTrade(tradeMaker(mo, 1, 1, 1, [0.5], 1))
mo = mo.createTrade(tradeMaker(mo, 3, 1, 1, [0.5], -1))

% Trader 1 buys 2 at 0.4 in market 2
mo = mo.createTrade(tradeMaker(mo, 1, 2, 1, [0.4], 1))
mo = mo.createTrade(tradeMaker(mo, 3, 2, 1, [0.4], -1))
mo = mo.createTrade(tradeMaker(mo, 1, 2, 1, [0.4], 1))
mo = mo.createTrade(tradeMaker(mo, 3, 2, 1, [0.4], -1))

% Trader 2 sells 1 at 0.9 in market 2
mo = mo.createTrade(tradeMaker(mo, 2, 2, 1, [0.9], -1))
mo = mo.createTrade(tradeMaker(mo, 3, 2, 1, [0.9], 1))


