CORRAL is a game program inspired by Harry (short for Aragon), a horse
acquired in a rash moment of indulgence for a teen-age daughter.
Harry, in his own inimitable style, taught us much about the care,
feeding and psychology of the equine species.  Some of that hard-won
psychology has found its way into CORRAL, which is a one-dimensional
simulation of the two- (and almost three-) dimensional problem of
catching Harry for anything other than food.  The main reason for
confining Harry's alter ego in the computer to only one dimension is
simply to conserve paper on hard-copy terminals.  Even so, the
presentation is very effective on a video display unit.

The corral itself is bounded by a pair of siderails represented by
upper-case I characters separated by 21 spaces.  The cowboy C always
enters beside the leftmost rail which the horse H is happily mooching
somewhere between positions 10 and 18 with a bias towards the right.
The bias and the various other behavioral peculiarities of the horse
are governed by two data matrices (statements 90 and 100) which may be
altered to vary the beast's temperament from wild to docile depending
on the data distribution.

If the horse bolts, a check is made (line 450) to ensure that it does
not reach a position less than one space away from the cowboy.
Occasionally, the horse bolts to a position more advantageous to the
cowboy, just as in real life, but usually the opposite is true,
particularly when it bolts as a result of an incautious approach by
the cowboy.  So heed with care the advice for the cowboy not to
advance by more than half the separation in any one move except when
adjacent to the horse, of course!

The probability that the horse may kick when the cowboy moves close is
set by the IF statement at line 500.  The cowboy is immobilized for
from one to five moves, while the horse canters happily away from the
scene of his triumph.  If this happens more than a certain (random)
number of times the round-up is terminated by the departure of the
cowboy in an ambulance.

Occasionally the horse decides to engage in a friendly dance around
the cowboy, but remember tyhat random number generator have no soul
and the result is often vile treachery as the horse delivers a fatal
lick at the very moment when a successful catch seems assured.  On the
other hand, the skill of an accomplished CORRAL cowboy can result in a
catch within three moves with no injuries sustained.  You either have
it or you have not, as the saying goes.  In the latter casae the
program allows a maximum of 100 moves before relegating the luckless
cowboy to cookhouse chores.

Computer freaks with multi-color graphics will no doubt be
dissatisfied with such prosaic symbols as H and C for the horse and
cowboy.  A fully animated CORRAL in living color (with sound effects
by a music or speech synthesizer -- a talking horse yet!) should not
be too difficult to achieve.

Program and description are by Colin Keay.
