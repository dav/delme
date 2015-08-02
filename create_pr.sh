DATE=`date +"%Y-%m-%d--%M-%S-%s"`
BRANCH="branch-${DATE}"
FILENAME="change.me"

echo
echo "*** creating new branch..."
echo
git checkout -b "${BRANCH}"

echo "Change ${DATE}" > "${FILENAME}"

echo
echo "*** committing change on branch..."
echo
git add "${FILENAME}"
git commit -m "Updated ${FILENAME}\n[Refs #100374104]"

echo
echo "*** Push branch to origin..."
echo
git push origin "${BRANCH}"

echo
echo "*** Creating pull request..."
echo
hub pull-request -m "Made change via script"

echo
echo "*** Switching back to master..."
echo
git checkout master

echo
echo "*** Deleting local branch..."
echo
git branch -D "${BRANCH}"