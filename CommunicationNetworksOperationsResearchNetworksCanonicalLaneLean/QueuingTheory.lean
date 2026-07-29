import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean

structure QueuingTheoryPackage where
  arrivalRate : ℝ
  serviceRate : ℝ
  numberServers : ℕ
  steadyState : Prop
  meanQueueLength : ℝ
  meanWaitTime : ℝ
  littleLaw : Prop

structure QueuingTheoryEvidence (Q : QueuingTheoryPackage) where
  arrivalRateClosed : Q.arrivalRate > 0
  serviceRateClosed : Q.serviceRate > 0
  numberServersClosed : Q.numberServers > 0
  steadyStateClosed : Q.steadyState
  meanQueueLengthClosed : Q.meanQueueLength ≥ 0
  meanWaitTimeClosed : Q.meanWaitTime ≥ 0
  littleLawClosed : Q.littleLaw

def QueuingTheoryClosed (Q : QueuingTheoryPackage) : Prop :=
  Q.arrivalRate > 0 ∧ Q.serviceRate > 0 ∧ Q.numberServers > 0 ∧ Q.steadyState ∧
  Q.meanQueueLength ≥ 0 ∧ Q.meanWaitTime ≥ 0 ∧ Q.littleLaw

theorem queuing_theory_closed_from_evidence (Q : QueuingTheoryPackage) (E : QueuingTheoryEvidence Q) :
    QueuingTheoryClosed Q := by
  exact And.intro E.arrivalRateClosed
    (And.intro E.serviceRateClosed
      (And.intro E.numberServersClosed
        (And.intro E.steadyStateClosed
          (And.intro E.meanQueueLengthClosed
            (And.intro E.meanWaitTimeClosed E.littleLawClosed)))))

end CommunicationNetworksOperationsResearchNetworksCanonicalLaneLean
end HautevilleHouse