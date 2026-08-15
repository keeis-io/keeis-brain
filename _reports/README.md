# Cadence reports

Output of the ProDesk's scheduled jobs. Reviewed on Mondays in the joint session;
once handled, moved to `_archive/`.

Division of powers on the server:
- The report cadence (digest) is READ-ONLY on the repo: it never publishes.
- The only job with external writes is the **publisher**, and it only transports artifacts
  a human approved by moving them to `outputs/*/approved/` (see `server/publisher/`).
