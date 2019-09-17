Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF44B4A1C
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 11:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtGA4XXyxOFiDUIWt3Xp2aQWI46NTDijyuZ57VYY0Is=; b=bGpovV9U463R3c
	31KWRj/8XojdfEZAbddpwIpsfpiG7Un89xG7y8ds+c8JfqMu2O3a2iwmZY+4nrBaO47O+Gr5f2tQ5
	1o+nIJDz0a9TjUhFNQ7yfijHehlgwQFnbVjjbZ547K9KJMeXwgz3kHKfO79Wt8VBoX9x8xFryfGp3
	LpftGM84lKiuHHEvI4I+pJ0EfuVCwueTyokNkBEx2scYNXKtZtVD3+k4QJ8HJJ3n8barokhafidTu
	0sL88lkjBuo2hNJWcvcXM+Da7W3yccAWe3sX0uhmuGZ/nQm9WGY4bcyOQq+9B/zI+zyQ/3ow3Ej7A
	8Rcu+9rzgRVK2Orq6XfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9Y3-0004LW-Lb; Tue, 17 Sep 2019 09:13:23 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9Y0-0004L8-ST
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 09:13:22 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1iA9Xw-0007y7-RE
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 11:13:16 +0200
Message-ID: <a4330611422d7caf5e67b9e9967b40e743ea8292.camel@sipsolutions.net>
Subject: Re: [PATCH v2] um: time-travel: rewrite as an event scheduler
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Tue, 17 Sep 2019 11:13:15 +0200
In-Reply-To: <1568671794-I5687e9cdda059457fa2771ee06f9b4f399dc6f70@changeid>
References: <1568671794-I5687e9cdda059457fa2771ee06f9b4f399dc6f70@changeid>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_021320_980493_165E29A8 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


> +static void time_travel_update_time(unsigned long long next, bool retearly)
> +{
> +	struct time_travel_event *e;
> +
> +	do {
> +		e = list_first_entry_or_null(&time_travel_events,
> +					     struct time_travel_event,
> +					     list);

I've copy/pasted this too much - I'll add a helper for it.

> +		if (e && e->time <= next) {
> +			BUG_ON(!time_travel_del_event(e));
> +			time_travel_set_time(e->time);
> +			time_travel_deliver_event(e);
> +		} else {
> +			time_travel_set_time(next);
> +		}
> +	} while (!retearly && time_travel_time < next);
> +}

This has some issues, at least in the time-travel=ext version, where a
new event might be inserted while we're moving time forward.

I think I'll insert that fix here as it's easier to understand in this
context, it basically is to add an event for the "next" time, and then
wait until that event's turn.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
