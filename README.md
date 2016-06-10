# scint
Analysis for untargeted high resolution mass spectrometry of complex organic matter mixtures

## What is scint?

The name scint comes from score (sc) and intensity (int).  It is a weight-average of intesity based upon a score.  

In mass spectrometry, such as FTICR-MS, each peak has an intensity and also a mass-to-charge ratio (m/z).  Assuming singly charged molecular ion, the m/z can be assigned a molecular formula.  Often assignment cannot uniquely come to a single molecular formula and instead several formulae fit within a mass tolerance.  This complicates calculations that assume a single formula for each peak.  

To overcome this problem we have developed a heuristic score for selecting the formula.  The score combines several metrics for the quality of the assignment and some chemical intution about the molecules likely to occur in nature.  The assignment and scoring algorithms are automated allowing a spectra of many thousands of peaks to be processes in mere minutes.  As higher throughput sampling and FTICR-MS analysis are developed this allows rapid analysis of enivornmental samples and other complex organic mixtures.

A different approach is using in scint.  Rather than pick the "best" formula, an average assignment is constructed using the scores.  A score-weighted intensity is applied to all possible formulae.  For example, if a peak assigned two formulae with equal scores then scint would assign half the intensity for each.  For each peak the scores are summed and each formulae is attributed a fraction of the peak intensity equivalent to its fraction of the score.
