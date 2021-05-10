Paper: https://www.brinckerhoff.org/clements/2214-csc530/Files/sgsl-autograder-2013.pdf

# Update 1

Read the paper fully and seems like a general overview of their project and their experience in using it.

Don't see much clear synthesis as they define all their translations beforehand, but it does make me hopeful that I can do some more experimenting and implementation.

# Update 2

Looking for leads on implementation and going to read this lectur material that goes over CEGIS some more https://people.csail.mit.edu/asolar/SynthesisCourse/Lecture10.htm

Also going to go over this short paper to gain insight into SKETCH https://people.csail.mit.edu/asolar/papers/Solar-Lezama09.pdf

# Update 3

Solar-Lezama piece is very interesting. I am curious as to the difference in approaches between functional synthesis and reactive synthesis. That is what does it mean for what we have looked at so far if we pivoted to a more reactive pov rather than functional. Clearly AHA, is a very functional approach, but how could it be handled otherwise? Too bad reactive wasn't covered in this piece buut something to look into later.

The use of CEGIS is generally preferred as the alternative, quantifier elimination, grows the size of the formula exponentially. They describe quantifier elimination as algebraically eliminating any variables that appear in the universal quantifier, and I'm not entirely sure but that sounds similar to the use of Farka's lemma in the previous paper. They also claim that once we go beyond linear arithmetic there may be no effecttive procedures for such an approach, however in some cases it can be very efficient and provide us with a good constraint.

CEGIS was described in 2006 but not fully coined and explained until 2008 by Solar-Lezama, Bodik and Jones.

'CEGIS is a form of generate and check' however the key is generating counter example inputs. 'This allows us to use an inductive synthesis procedure instead of simply producing proposals blindly.' Pretty much we want to use examples and counter examples to accurately find proposals that work for all examples so far, and and to generate new and uniwue counterexamples. 

CEGIS does have weaknesses though, but don't we all.

All in all, this was a great piece going over different approaches to verification techniques in program synthesis and now I am moving on to review the sketch paper.



