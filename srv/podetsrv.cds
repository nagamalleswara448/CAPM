
using { potables as potab  } from '../db/podet';

service openposrv {
      entity poheadsrv as projection on potab.poheader;
      entity poitemsrv as projection on potab.poitem;
      entity poschlines as projection on potab.poschlines;

}